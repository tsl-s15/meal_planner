class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # has many selected_recipes
  def selected_recipes
    SelectedRecipe.where(user_id: self.id)
  end

  # has many recipes through selected_recipes
  def recipes
    return self.selected_recipes.map do |selected_recipe|
      selected_recipe.recipe
    end
    # recipes = []
    # self.selected_recipes.each do |selected_recipe|
    #   recipes << selected_recipe.recipe
    # end
    # return recipes
  end

  def ingredient_list
    recipe_ingredients = self.recipes.map do |recipe|
      recipe.recipe_ingredients
    end.flatten

    ids_to_ignore = []
    ingredient_list = []
    recipe_ingredients.each do |recipe_ingredient|
      unless ids_to_ignore.include?(recipe_ingredient.ingredient_id)
        ingredient = { name: recipe_ingredient.ingredient.name,
                       amount: 0,
                       unit: recipe_ingredient.ingredient.unit }
        recipe_ingredients.each do |ri|
          if recipe_ingredient.ingredient_id == ri.ingredient_id
            ingredient[:amount] = ingredient[:amount] + ri.amount
          end
        end
        ids_to_ignore << recipe_ingredient.ingredient_id
        ingredient_list << ingredient
      end
    end
    return ingredient_list
  end

  # TODO: come back to this
  # def ingredient_list
  #   list = RecipeIngredient.none
  #   recipe_ingredients = self.recipes.map do |recipe|
  #     recipe.recipe_ingredients.inject(list) do |total, recipe_ingredient|
  #       total + recipe_ingredient
  #     end
  #   end
  #   return list
  # end

end

