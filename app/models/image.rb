class Image < ApplicationRecord
  has_many :tags
  has_many :users, through: :tags
end
