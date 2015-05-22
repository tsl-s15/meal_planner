class RecipeIngredient < ActiveRecord::Base
  validates :recipe_id, :ingredient_id, { numericality: { only_integer: true }}
  validates :amount, { numericality: true}
  # belongs to ingredient
  def ingredient
    Ingredient.find(self.ingredient_id)
  end

  # belongs to recipe
  def recipe
    Recipe.find(self.recipe_id)
  end
end
