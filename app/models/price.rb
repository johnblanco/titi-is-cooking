class Price < ActiveRecord::Base
  validates :price, presence: true
  belongs_to :ingredient
end