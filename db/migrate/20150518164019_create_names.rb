class CreateNames < ActiveRecord::Migration
  def change
    create_table :names do |t|
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
