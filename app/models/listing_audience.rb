class ListingAudience < ActiveRecord::Base
  belongs_to :listing
  belongs_to :audience
end
