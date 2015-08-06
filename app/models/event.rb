class Event < ActiveRecord::Base
  belongs_to :organisation
  has_many :audiences
  accepts_nested_attributes_for :audiences, :allow_destroy => true

  has_many :categories
  accepts_nested_attributes_for :categories, :allow_destroy => true

end
