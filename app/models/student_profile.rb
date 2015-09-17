class StudentProfile < ActiveRecord::Base
  # If true, destroys any members from the attributes hash with a _destroy key
  # and a value that evaluates to true (eg. 1, '1', true, or 'true').
  # This option is off by default.

  mount_uploader :resume, ResumeUploader
  mount_uploader :profile_pic, ProfilePicUploader

  belongs_to :user
  has_many :university_educations
  accepts_nested_attributes_for :university_educations, :allow_destroy => true

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

  def self.setup_fullname
    full_name = [first_name, last_name].compact.join(' ')
  end

  def self.search(search)
    where("first_name ILIKE ? OR last_name ILIKE ? OR full_name ILIKE ?OR work_history ILIKE ?", "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%")
  end



end
