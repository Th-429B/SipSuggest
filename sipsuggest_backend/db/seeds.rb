# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# Create Ingredients
mint = Ingredient.find_or_create_by(name: "Mint")
lime = Ingredient.find_or_create_by(name: "Lime")
rum = Ingredient.find_or_create_by(name: "Rum")
soda = Ingredient.find_or_create_by(name: "Soda")

# Create Cocktail Recipes
mojito = Recipe.create(name: "Mojito", description: "Refreshing cocktail with mint and lime")
rum_punch = Recipe.create(name: "Rum Punch", description: "Tropical punch with rum and soda")


# Associate Ingredients with Cocktail Recipes
mojito.ingredients << [mint, lime, rum]
rum_punch.ingredients << [rum, lime, soda]

# Create steps for the recipe
Step.create(recipe: mojito, step_number: 1, instruction: "Muddle mint and lime in a glass.")
Step.create(recipe: mojito, step_number: 2, instruction: "Add ice and pour in rum and soda.")
Step.create(recipe: mojito, step_number: 3, instruction: "Stir and garnish with mint leaves.")

Step.create(recipe: rum_punch, step_number: 1, instruction: "Mix rum, lime juice, and soda in a punch bowl.")
Step.create(recipe: rum_punch, step_number: 2, instruction: "Add ice and stir well.")
Step.create(recipe: rum_punch, step_number: 3, instruction: "Garnish with lime slices.")

