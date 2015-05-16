class Recipe < ActiveRecord::Base
  validates :name, presence: true
  validates :cost, presence: true
  validates :portions, presence: true

  has_many :ingredients, :through => :recipe_ingredient
end
