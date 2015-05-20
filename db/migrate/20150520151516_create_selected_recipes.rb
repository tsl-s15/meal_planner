class CreateSelectedRecipes < ActiveRecord::Migration
  def change
    create_table :selected_recipes do |t|
      t.integer :user_id
      t.integer :recipe_id

      t.timestamps

    end
  end
end
