class Send < ApplicationRecord
  belongs_to :user, :optional => true
  geocoded_by :address
  after_validation :geocode
end
