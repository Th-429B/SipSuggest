# # This file should contain all the record creation needed to seed the database with its default values.
# # The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
# #
# # Examples:
# #
# #   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
# #   Character.create(name: 'Luke', movie: movies.first)


# # Create Ingredients
# mint = Ingredient.find_or_create_by(name: "Mint")
# lime = Ingredient.find_or_create_by(name: "Lime")
# rum = Ingredient.find_or_create_by(name: "Rum")
# soda = Ingredient.find_or_create_by(name: "Soda")
# whiskey = Ingredient.find_or_create_by(name: "Whiskey")
# sugar = Ingredient.find_or_create_by(name: "Sugar")
# orange = Ingredient.find_or_create_by(name: "Orange")
# angostura_bitters = Ingredient.find_or_create_by(name: "Angostura Bitters")

# # Create Cocktail Recipes
# mojito = Recipe.create(name: "Mojito", description: "Refreshing cocktail with mint and lime")
# rum_punch = Recipe.create(name: "Rum Punch", description: "Tropical punch with rum and soda")
# old_fashioned = Recipe.create(name: "Old Fashioned", description: "The classic bourbon cocktail")

# # Associate Ingredients with Cocktail Recipes
# mojito.ingredients << [mint, lime, rum]
# rum_punch.ingredients << [rum, lime, soda]
# old_fashioned.ingredients << [whiskey, sugar, angostura_bitters, orange]

# # Create steps for the recipe
# Step.create(recipe: mojito, step_number: 1, instruction: "Muddle mint and lime in a glass.")
# Step.create(recipe: mojito, step_number: 2, instruction: "Add ice and pour in rum and soda.")
# Step.create(recipe: mojito, step_number: 3, instruction: "Stir and garnish with mint leaves.")

# Step.create(recipe: rum_punch, step_number: 1, instruction: "Mix rum, lime juice, and soda in a punch bowl.")
# Step.create(recipe: rum_punch, step_number: 2, instruction: "Add ice and stir well.")
# Step.create(recipe: rum_punch, step_number: 3, instruction: "Garnish with lime slices.")

# Step.create(recipe: old_fashioned, step_number: 1, instruction: "Add 1 sugar cube and 2 dashes of angostura bitters and muddle them in a whiskey glass.")
# Step.create(recipe: old_fashioned, step_number: 2, instruction: "Add whiskey and mix.")
# Step.create(recipe: old_fashioned, step_number: 3, instruction: "Express the orange oils on the rim of the glass and add into the glass")
# Step.create(recipe: old_fashioned, step_number: 4, instruction: "Add ice and serve")

# Create a Mojito recipe
mojito = Recipe.create(name: "Mojito", description: "A refreshing cocktail with mint, lime, and rum")

mint = Ingredient.find_or_create_by(name: "Mint")
lime = Ingredient.find_or_create_by(name: "Lime")
rum = Ingredient.find_or_create_by(name: "Rum")
sugar = Ingredient.find_or_create_by(name: "Sugar")
soda_water = Ingredient.find_or_create_by(name: "Soda Water")

RecipeIngredient.create(recipe: mojito, ingredient: mint, quantity: "10 leaves")
RecipeIngredient.create(recipe: mojito, ingredient: lime, quantity: "1/2")
RecipeIngredient.create(recipe: mojito, ingredient: rum, quantity: "1.5 oz")
RecipeIngredient.create(recipe: mojito, ingredient: sugar, quantity: "2 tsp")
RecipeIngredient.create(recipe: mojito, ingredient: soda_water, quantity: "Top up")

Step.create(recipe: mojito, step_number: 1, instruction: "Muddle mint and lime in a glass.")
Step.create(recipe: mojito, step_number: 2, instruction: "Add ice and pour in rum and soda.")
Step.create(recipe: mojito, step_number: 3, instruction: "Stir and garnish with mint leaves.")

