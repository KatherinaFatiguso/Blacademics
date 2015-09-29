class Message < ActiveRecord::Base
  belongs_to :user

  mount_uploader :attachment, ProfilePicUploader

  scope :unread,->{ where(status: 'unread') }

  def self.incoming_messages(id)
    where('to = ? AND status =?', id, 'unread').count
  end

end
