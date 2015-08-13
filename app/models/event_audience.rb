class EventAudience < ActiveRecord::Base
  belongs_to :event
  belongs_to :audience
end
