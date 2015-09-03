class Listing < ActiveRecord::Base
  belongs_to :organisation
  has_many :listing_audiences
  has_many :audiences, through: :listing_audiences

  scope :program_type,->{ where(listing_type: 'program') }
  scope :event_type,->{ where(listing_type: 'event') }
  scope :job_type,->{ where(listing_type: 'job') }
  scope :draft,->{ where(status: 'draft') }
  scope :approved,->{ where(status: 'approved') }
  scope :expired,->{ where(status: 'expired') }
  scope :archived,->{ where(status: 'archived') }
  scope :expires,->{where("expired_at < ?", Date.today)}

  validate :start_time_cannot_be_empty
  validate :end_time_cannot_be_empty
  validate :start_time_cannot_be_in_the_past
  validate :end_time_cannot_be_in_the_past
  validate :end_time_must_be_greater_than_start_time

  mount_uploader :image, ProfilePicUploader


  validates_presence_of :audiences, unless: :is_job_listing
  # audiences must be present only for listing type of event and program, but not for job
  # see http://guides.rubyonrails.org/active_record_validations.html#conditional-validation

  is_impressionable :counter_cache => true, :unique => :request_hash

  def self.check_for_expired_listings
    newly_expired_listings.each do |listing|
      listing.update_attributes(status: 'expired')
      listing.save!
    end
  end

  def self.newly_expired_listings
    where('expired_at < ? AND status != ?', Date.today, 'expired')
  end

  def is_job_listing
    listing_type == 'job'
  end

  def start_time_cannot_be_empty
    errors.add(:start_time, "can't be empty") if !start_time.present?
  end

  def end_time_cannot_be_empty
    errors.add(:end_time, "can't be empty") if !end_time.present?
  end

  def start_time_cannot_be_in_the_past
    errors.add(:start_time, "can't be in the past") if start_time.present? && start_time < Date.today
  end

  def end_time_cannot_be_in_the_past
    errors.add(:end_time, "can't be in the past") if end_time.present? && end_time < Date.today
  end

  def end_time_must_be_greater_than_start_time
    errors.add(:end_time, "must be after the start time") if end_time.present? && start_time.present? && end_time < start_time
  end

  def is_expired?
    status == 'expired'
  end


end
