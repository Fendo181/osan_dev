class Community < ApplicationRecord
  belongs_to :user
  has_many :events
  mount_uploader :picture, PictureUploader
  # has_many :category
  # has_many :category, through: :category_community
end
