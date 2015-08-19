class Listing < ActiveRecord::Base
  belongs_to :organisation

  scope :program_type,->{ where(listing_type: 'program') }
  scope :event_type,->{ where(listing_type: 'event') }
  scope :job_type,->{ where(listing_type: 'job') }

end
