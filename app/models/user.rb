class User < ActiveRecord::Base
  has_one :student_profile
  has_one :organisation
  has_many :messages

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

  def find_user_type(id)
    user.user_type where('id ?', id)
  end

end
