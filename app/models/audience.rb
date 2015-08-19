class Audience < ActiveRecord::Base
  has_many :listing_audiences
  has_many :listings, through: :listing_audiences
end
