class User < ActiveRecord::Base
  has_one :student_profile

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
