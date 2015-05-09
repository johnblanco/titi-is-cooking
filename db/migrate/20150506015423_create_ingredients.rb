class CreateIngredients < ActiveRecord::Migration
  def change
    create_table :ingredients do |t|
      t.string :name
      t.integer :amount_included
      t.integer :price
      t.string :measurement_unit

      t.timestamps null: false
    end
  end
end
