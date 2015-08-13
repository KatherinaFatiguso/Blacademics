class Event < ActiveRecord::Base
  belongs_to :organisation
  has_many :event_audiences
  has_many :audiences, through: :event_audiences

  has_many :categories
  accepts_nested_attributes_for :categories, :allow_destroy => true

end
