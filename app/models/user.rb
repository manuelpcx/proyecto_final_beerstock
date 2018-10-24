class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

has_many :orders
has_many :products, through: :orders
geocoded_by :address
after_validation :geocode

enum role: [:admin, :visit]
end
