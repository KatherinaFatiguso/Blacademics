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

  def setup_full_name
    self.full_name = [self.first_name, self.last_name].compact.join(' ')
    self.save!
  end

  def self.search(search)
    where("first_name ILIKE ? OR last_name ILIKE ? OR full_name ILIKE ?OR work_history ILIKE ?", "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%")
  end

  def check_contact(id)
    StudentProfile.where("'connections' = ANY (id)")
    # self.connections.where("connections @> ?", '{id}')
  end
  # Returns true if the contact id is not found in the connections column of this student.

end
