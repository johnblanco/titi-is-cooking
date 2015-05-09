class Ingredient < ActiveRecord::Base
  validates :name, presence: true
  validates :amount_included, presence: true
  validates :price, presence: true

  has_many :prices
end
