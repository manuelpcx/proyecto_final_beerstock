class Product < ApplicationRecord
  has_many :users
  mount_uploader :photo, ImageUploader
  validates :photo, presence: true
end
