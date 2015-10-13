class News < ActiveRecord::Base
  belongs_to :organisation
  is_impressionable :counter_cache => true
  mount_uploader :picture, ProfilePicUploader
  mount_uploader :video, ProfilePicUploader

  validates :title, :author, :description, :categories, presence: true

end
