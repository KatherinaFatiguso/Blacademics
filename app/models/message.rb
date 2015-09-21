class Message < ActiveRecord::Base
  belongs_to :user

  mount_uploader :attachment, ProfilePicUploader

end
