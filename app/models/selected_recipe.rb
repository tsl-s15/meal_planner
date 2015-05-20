class SelectedRecipe < ActiveRecord::Base
  # belongs to user
  def user
    User.find(self.user_id)
  end

  # belongs to recipe
  def recipe
    Recipe.find(self.recipe_id)
  end
end

