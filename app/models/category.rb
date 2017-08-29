class Category < ApplicationRecord
  has_many :community
  has_many :community, through: :category_community
end
