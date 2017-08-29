class CategoryCommunity < ApplicationRecord
  belongs_to :category
  belongs_to :community
end
