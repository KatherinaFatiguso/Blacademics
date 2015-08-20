class Listing < ActiveRecord::Base
  belongs_to :organisation

  scope :program_type,->{ where(listing_type: 'program') }
  scope :event_type,->{ where(listing_type: 'event') }
  scope :job_type,->{ where(listing_type: 'job') }

  has_many :listing_audiences
  has_many :audiences, through: :listing_audiences

  # validate :start_time, presence: true
  # validate :end_time, presence: true
  validate :start_time_cannot_be_empty
  validate :end_time_cannot_be_empty
  validate :start_time_cannot_be_in_the_past
  validate :end_time_cannot_be_in_the_past

  def start_time_cannot_be_empty
    errors.add(:start_time, "Start Time can't be empty") if !start_time.present?
  end

  def end_time_cannot_be_empty
    errors.add(:end_time, "End Time can't be empty") if !end_time.present?
  end

  def start_time_cannot_be_in_the_past
    errors.add(:start_time, "Start Time can't be in the past") if start_time.present? && start_time < Date.today
  end

  def end_time_cannot_be_in_the_past
    errors.add(:end_time, "End Time can't be in the past") if end_time.present? && end_time < Date.today
  end

end
