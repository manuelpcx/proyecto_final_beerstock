class Product < ApplicationRecord
  has_many :orders
  has_many :users, through: :orders
  mount_uploader :photo, ImageUploader
  validates :photo, presence: true
end
