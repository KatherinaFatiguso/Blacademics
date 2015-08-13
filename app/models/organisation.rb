class Organisation < ActiveRecord::Base
  validates :name, presence: true

  has_many :org_users
  has_many :users, through: :org_users

  has_many :events
  accepts_nested_attributes_for :events, :allow_destroy => true

  has_many :jobs
  accepts_nested_attributes_for :jobs, :allow_destroy => true
end
