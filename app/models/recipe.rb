class Recipe < ActiveRecord::Base
  validates :name, :cuisine, :servings, :prep_time, :instructions, :meal_category, :creator_id, presence: true
  validates :servings, :prep_time, :creator_id, numericality: { only_integer: true }

  # has many recipe_ingredients
  def recipe_ingredients
    RecipeIngredient.where(recipe_id: self.id)
  end

  # has many selected recipes
  def selected_recipes
    SelectedRecipe.where(recipe_id: self.id )
  end

  # belongs to creator
  def creator
    User.find(self.creator_id)
  end
end


