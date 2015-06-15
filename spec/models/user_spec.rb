require "rails_helper"

RSpec.describe User, :type => :model do
  it 'has an ingredient list' do
    u = User.create!(email: 'a@a.com',
                      password: '12341234',
                      password_confirmation: '12341234')
    r = Recipe.create!(name: 'tacos',
                        cuisine: 'mexican',
                        servings: 4,
                        prep_time: 30,
                        instructions: 'test',
                        meal_category: 'lunch',
                        creator_id: u.id)

    i = Ingredient.create!(name: 'cheese', category: 'dairy', price_per_unit: '3', unit: 'oz')
    ri = RecipeIngredient.create!(recipe_id: r.id,
                                  ingredient_id: i.id,
                                  amount: 2)
    sr = SelectedRecipe.create!(recipe_id: r.id, user_id: u.id)

    expect(u.ingredient_list).to eq([{name: i.name, amount: ri.amount, unit: i.unit}])
  end
end
