class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.string :name
      t.string :cuisine
      t.integer :servings
      t.integer :prep_time
      t.text :instructions
      t.string :meal_category
      t.integer :creator_id

      t.timestamps

    end
  end
end
