class StudentProfile < ActiveRecord::Base
  belongs_to :user
  has_many :university_educations
  accepts_nested_attributes_for :university_educations, :allow_destroy => true
  # If true, destroys any members from the attributes hash with a _destroy key
  # and a value that evaluates to true (eg. 1, '1', true, or 'true').
  # This option is off by default.

  has_many :scholarships
  accepts_nested_attributes_for :scholarships

  has_many :awards
  accepts_nested_attributes_for :awards

  has_many :internships
  accepts_nested_attributes_for :internships

end
