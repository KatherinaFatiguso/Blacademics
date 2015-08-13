class Audience < ActiveRecord::Base
  has_many :event_audiences
  has_many :events, through: :event_audiences

end
