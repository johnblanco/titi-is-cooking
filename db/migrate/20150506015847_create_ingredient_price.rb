class CreateIngredientPrice < ActiveRecord::Migration
  def change
    create_table :prices do |t|
      t.belongs_to :ingredient
      t.integer :price
      t.datetime :created_at,       null: false
    end
  end
end
