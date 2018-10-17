class Order < ApplicationRecord
  belongs_to :user
  belongs_to :product

  scope :cart, -> {where(payed: false)}

  def self.get_total
    pluck("price * quantity").sum()
  end
end
