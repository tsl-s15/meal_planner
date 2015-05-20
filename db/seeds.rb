# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.destroy_all
user1 = User.create(email: 'a@a.com',
                    username: 'arjunvenkat',
                    image_url: 'http://robohash.org/arjunvenkat',
                    password: '12341234')
user2 = User.create(email: 'r@r.com',
                    username: 'raghubetina',
                    image_url: 'http://robohash.org/raghubetina',
                    password: '12341234')

puts "#{User.count} users in the database"

Ingredient.destroy_all
tortillas = Ingredient.create(name: 'flour tortillas',
                             category: 'bread',
                             price_per_unit: '0.2',
                             unit: 'count')
sirloin = Ingredient.create(name: 'ground sirloin',
                             category: 'meat',
                             price_per_unit: '0.3',
                             unit: 'oz')
cheese = Ingredient.create(name: 'Chihuahua',
                             category: 'cheese',
                             price_per_unit: '0.2',
                             unit: 'oz')
tomatoes = Ingredient.create(name: 'diced tomato',
                             category: 'vegetable',
                             price_per_unit: '0.08',
                             unit: 'oz')
onions = Ingredient.create(name: 'chopped onion',
                             category: 'vegetable',
                             price_per_unit: '0.05',
                             unit: 'cup')
cilantro = Ingredient.create(name: 'cilantro',
                             category: 'vegetable',
                             price_per_unit: '0.01',
                             unit: 'cup')


puts "#{Ingredient.count} ingredients in the database"

Recipe.destroy_all
tacos = Recipe.create(name: 'tacos',
                      cuisine: 'mexican',
                      servings: 4,
                      prep_time: 25,
                      meal_category: 'lunch',
                      creator_id: user1.id,
                      instructions: "Heat the oil in a large skillet over medium-high heat. Add the onion and cook until beginning to soften, 3 to 4 minutes.
Add the garlic and cook for 1 minute.
Stir in beef, parsley, tomato paste, ½ teaspoon salt, and ¼ teaspoon pepper. Cook, breaking up with a wooden spoon, until browned, 8 to 10 minutes.
Fill each tortilla with the meat mixture, cabbage, tomatoes, and cilantro. Serve with the hot sauce, if desired.")
quesadillas = Recipe.create(name: 'quesadillas',
                      cuisine: 'mexican',
                      servings: 4,
                      prep_time: 10,
                      meal_category: 'lunch',
                      creator_id: user1.id,
                      instructions: "Lay the tortillas flat on a cookie sheet. Sprinkle some of the cheese on 1 half of each tortilla. Try not to get it too close to the edge. Fold the tortillas in half over the cheese to make a half-moon. Warm a skillet over low heat and add 1 tablespoon of the butter. Add the tortilla to the skillet and cook until it is lightly brown, about 2 minutes. Using a spatula, gently lift the edge so you can check. When 1 side is brown, turn the tortilla over and cook the other side until brown and the cheese is all gooey. Use a spatula to transfer to individual plates or a large platter. Repeat with remaining butter and tortillas. Top them with the sour cream, salsa and guacamole.")
puts "#{Recipe.count} recipes in the database"

RecipeIngredient.destroy_all
RecipeIngredient.create(recipe_id: tacos.id,
                        ingredient_id: tortillas.id,
                        amount: 12)
RecipeIngredient.create(recipe_id: tacos.id,
                        ingredient_id: sirloin.id,
                        amount: 16)
RecipeIngredient.create(recipe_id: tacos.id,
                        ingredient_id: tomatoes.id,
                        amount: 1)
RecipeIngredient.create(recipe_id: tacos.id,
                        ingredient_id: onions.id,
                        amount: 0.5)
RecipeIngredient.create(recipe_id: tacos.id,
                        ingredient_id: cilantro.id,
                        amount: 0.2)
RecipeIngredient.create(recipe_id: quesadillas.id,
                        ingredient_id: tortillas.id,
                        amount: 12)
RecipeIngredient.create(recipe_id: quesadillas.id,
                        ingredient_id: cheese.id,
                        amount: 12)
puts "#{RecipeIngredient.count} recipe_ingredients in the database"

SelectedRecipe.destroy_all
SelectedRecipe.create(user_id: user1.id,
                      recipe_id: tacos.id)
SelectedRecipe.create(user_id: user2.id,
                      recipe_id: tacos.id)
SelectedRecipe.create(user_id: user2.id,
                      recipe_id: quesadillas.id)
puts "#{SelectedRecipe.count} selected recipes in the database"

