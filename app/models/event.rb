class Event < ApplicationRecord
  belongs_to :user
  belongs_to :community
  mount_uploader :picture, PictureUploader
end
