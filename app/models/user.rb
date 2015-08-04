class User < ActiveRecord::Base
  has_one :student_profile
  has_many :org_users
  has_many :organisations, through: :org_users

  rolify
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  after_create :assign_role

  def assign_role
    role = self.user_type
    self.add_role role
  end

end
