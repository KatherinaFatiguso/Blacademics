class Organisation < ActiveRecord::Base
  validates :company_name, presence: true

  belongs_to :user

  has_many :listings
  accepts_nested_attributes_for :listings, :allow_destroy => true

  mount_uploader :logo, ProfilePicUploader

  def self.search(search)
    where("company_name ILIKE ? OR department ILIKE ? OR state ILIKE ? OR suburb ILIKE ? OR postcode ILIKE ?", "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%")
  end

end
