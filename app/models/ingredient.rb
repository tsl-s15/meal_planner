class Ingredient < ActiveRecord::Base
  def recipe_ingredients
    RecipeIngredient.where(ingredient_id: self.id)
  end
end
