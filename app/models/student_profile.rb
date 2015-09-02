class StudentProfile < ActiveRecord::Base
  # include Cloudinary::CarrierWave
  belongs_to :user
  has_many :university_educations
  accepts_nested_attributes_for :university_educations, :allow_destroy => true
  # If true, destroys any members from the attributes hash with a _destroy key
  # and a value that evaluates to true (eg. 1, '1', true, or 'true').
  # This option is off by default.

  mount_uploader :resume, ResumeUploader
  mount_uploader :profile_pic, ProfilePicUploader


  has_many :scholarships
  accepts_nested_attributes_for :scholarships, :allow_destroy => true

  has_many :awards
  accepts_nested_attributes_for :awards, :allow_destroy => true

  has_many :internships
  accepts_nested_attributes_for :internships, :allow_destroy => true

  has_many :cadetships
  accepts_nested_attributes_for :cadetships, :allow_destroy => true

  has_many :employments
  accepts_nested_attributes_for :employments, :allow_destroy => true

  has_many :skills
  accepts_nested_attributes_for :skills, :allow_destroy => true

end
