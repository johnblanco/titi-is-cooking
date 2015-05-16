class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.string :name
      t.integer :cost
      t.string :portions

      t.timestamps null: false
    end
  end
end
