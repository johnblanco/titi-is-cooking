class CreateRecipeIngredients < ActiveRecord::Migration
  def change
    create_table :recipe_ingredients do |t|
      t.belongs_to :ingredient
      t.belongs_to :recipe
      t.integer :amount
    end
  end
end
