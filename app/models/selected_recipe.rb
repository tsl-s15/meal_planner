class SelectedRecipe < ActiveRecord::Base
  validates :recipe_id, :user_id, { numericality: { only_integer: true }}

  # belongs to user
  def user
    User.find(self.user_id)
  end

  # belongs to recipe
  def recipe
    Recipe.find(self.recipe_id)
  end
end

