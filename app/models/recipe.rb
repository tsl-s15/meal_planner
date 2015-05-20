class Recipe < ActiveRecord::Base
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


