class CreateIngredients < ActiveRecord::Migration
  def change
    create_table :ingredients do |t|
      t.string :name
      t.string :category
      t.float :price_per_unit
      t.string :unit

      t.timestamps

    end
  end
end
