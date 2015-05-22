class Ingredient < ActiveRecord::Base
  validates :name, :category, :unit, { presence: true }
  validates :price_per_unit, { numericality: true, allow_blank: true }

  def recipe_ingredients
    RecipeIngredient.where(ingredient_id: self.id)
  end
end
