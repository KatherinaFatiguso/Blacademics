class News < ActiveRecord::Base
  belongs_to :organisation
  is_impressionable :counter_cache => true
  mount_uploader :picture, ProfilePicUploader
  mount_uploader :video, ProfilePicUploader

  validates :title, :author, :description, :categories, presence: true
  scope :on,->{ where(published: 'on') }

  def self.search(search)
     where("title ILIKE ? OR description ILIKE ?", "%#{search}%", "%#{search}%")
  end

end
