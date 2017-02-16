class Image < ApplicationRecord
  has_many :tags
  has_many :users, through: :tags

  has_attached_file :photo_file, :styles => { :medium => "400x400>", :thumb => "100x100#" }, :default_url => "/images/:style/missing.jpg"
  validates_attachment_content_type :photo_file, :content_type => /\Aimage\/.*\Z/
end
