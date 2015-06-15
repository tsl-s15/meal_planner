require "rails_helper"

RSpec.describe RecipeIngredient, :type => :model do
  it "belongs to a recipe" do
    r = Recipe.new
    r.name = 'tacos'
    r.cuisine = 'mexican'
    r.servings = 4
    r.prep_time = 30
    r.instructions = 'test'
    r.meal_category = 'lunch'
    r.creator_id = 1
    r.save

    ri = RecipeIngredient.new
    ri.recipe_id = r.id
    ri.ingredient_id = 4
    ri.amount = 2
    ri.save

    expect(ri.recipe).to eq(r)
  end

  it 'belongs to an ingredient' do
    i = Ingredient.create!(name: 'cheese', category: 'dairy', price_per_unit: '3', unit: 'oz')
    ri = RecipeIngredient.create!(recipe_id: 1, ingredient_id: 1, amount: 2)
    expect(ri.ingredient).to eq(i)
  end

end
