class RecipeIngredient < ActiveRecord::Base
  # belongs to ingredient
  def ingredient
    Ingredient.find(self.ingredient_id)
  end

  # belongs to recipe
  def recipe
    Recipe.find(self.recipe_id)
  end
end
