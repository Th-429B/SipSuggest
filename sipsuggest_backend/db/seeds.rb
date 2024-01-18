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
mojito = Recipe.create(name: "Mojito")
rum_punch = Recipe.create(name: "Rum Punch")


# Associate Ingredients with Cocktail Recipes
mojito.ingredients << [mint, lime, rum]
rum_punch.ingredients << [rum, lime, soda]

puts "Seed data has been created successfully."
