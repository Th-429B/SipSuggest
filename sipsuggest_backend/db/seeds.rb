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

old_fashioned = Recipe.create(name: 'Old Fashioned', description: 'Placeholder', img_link:'https://www.thecocktaildb.com/images/media/drink/vrwquq1478252802.jpg')

bourbon = Ingredient.find_or_create_by(name: 'Bourbon')
RecipeIngredient.create(recipe: old_fashioned, ingredient: bourbon, quantity: '4.5 cL')
angostura_bitters = Ingredient.find_or_create_by(name: 'Angostura bitters')
RecipeIngredient.create(recipe: old_fashioned, ingredient: angostura_bitters, quantity: '2 dashes')
sugar = Ingredient.find_or_create_by(name: 'Sugar')
RecipeIngredient.create(recipe: old_fashioned, ingredient: sugar, quantity: '1 cube')
water = Ingredient.find_or_create_by(name: 'Water')
RecipeIngredient.create(recipe: old_fashioned, ingredient: water, quantity: 'dash')

Step.create(recipe: old_fashioned, step_number: 1, instruction: 'Place sugar cube in old fashioned glass and saturate with bitters, add a dash of plain water')
Step.create(recipe: old_fashioned, step_number: 2, instruction: ' Muddle until dissolved')
Step.create(recipe: old_fashioned, step_number: 3, instruction: 'Fill the glass with ice cubes and add whiskey')
Step.create(recipe: old_fashioned, step_number: 4, instruction: 'Garnish with orange twist, and a cocktail cherry')

negroni = Recipe.create(name: 'Negroni', description: 'Placeholder', img_link:'https://www.thecocktaildb.com/images/media/drink/qgdu971561574065.jpg')

gin = Ingredient.find_or_create_by(name: 'Gin')
RecipeIngredient.create(recipe: negroni, ingredient: gin, quantity: '1 oz ')
campari = Ingredient.find_or_create_by(name: 'Campari')
RecipeIngredient.create(recipe: negroni, ingredient: campari, quantity: '1 oz ')
sweet_vermouth = Ingredient.find_or_create_by(name: 'Sweet Vermouth')
RecipeIngredient.create(recipe: negroni, ingredient: sweet_vermouth, quantity: '1 oz ')

Step.create(recipe: negroni, step_number: 1, instruction: 'Stir into glass over ice, garnish and serve')

daiquiri = Recipe.create(name: 'Daiquiri', description: 'Placeholder', img_link:'https://www.thecocktaildb.com/images/media/drink/mrz9091589574515.jpg')

light_rum = Ingredient.find_or_create_by(name: 'Light rum')
RecipeIngredient.create(recipe: daiquiri, ingredient: light_rum, quantity: '1 1/2 oz ')
lime = Ingredient.find_or_create_by(name: 'Lime')
RecipeIngredient.create(recipe: daiquiri, ingredient: lime, quantity: 'Juice of 1/2 ')
powdered_sugar = Ingredient.find_or_create_by(name: 'Powdered sugar')
RecipeIngredient.create(recipe: daiquiri, ingredient: powdered_sugar, quantity: '1 tsp ')

Step.create(recipe: daiquiri, step_number: 1, instruction: 'Pour all ingredients into shaker with ice cubes')
Step.create(recipe: daiquiri, step_number: 2, instruction: ' Shake well')
Step.create(recipe: daiquiri, step_number: 3, instruction: ' Strain in chilled cocktail glass')

dry_martini = Recipe.create(name: 'Dry Martini', description: 'Placeholder', img_link:'https://www.thecocktaildb.com/images/media/drink/6ck9yi1589574317.jpg')

gin = Ingredient.find_or_create_by(name: 'Gin')
RecipeIngredient.create(recipe: dry_martini, ingredient: gin, quantity: '1 2/3 oz ')
dry_vermouth = Ingredient.find_or_create_by(name: 'Dry Vermouth')
RecipeIngredient.create(recipe: dry_martini, ingredient: dry_vermouth, quantity: '1/3 oz ')
olive = Ingredient.find_or_create_by(name: 'Olive')
RecipeIngredient.create(recipe: dry_martini, ingredient: olive, quantity: '1 ')

Step.create(recipe: dry_martini, step_number: 1, instruction: 'Straight: Pour all ingredients into mixing glass with ice cubes')
Step.create(recipe: dry_martini, step_number: 2, instruction: ' Stir well')
Step.create(recipe: dry_martini, step_number: 3, instruction: ' Strain in chilled martini cocktail glass')
Step.create(recipe: dry_martini, step_number: 4, instruction: ' Squeeze oil from lemon peel onto the drink, or garnish with olive')

margarita = Recipe.create(name: 'Margarita', description: 'Placeholder', img_link:'https://www.thecocktaildb.com/images/media/drink/5noda61589575158.jpg')

tequila = Ingredient.find_or_create_by(name: 'Tequila')
RecipeIngredient.create(recipe: margarita, ingredient: tequila, quantity: '1 1/2 oz ')
triple_sec = Ingredient.find_or_create_by(name: 'Triple sec')
RecipeIngredient.create(recipe: margarita, ingredient: triple_sec, quantity: '1/2 oz ')
lime_juice = Ingredient.find_or_create_by(name: 'Lime juice')
RecipeIngredient.create(recipe: margarita, ingredient: lime_juice, quantity: '1 oz ')
salt = Ingredient.find_or_create_by(name: 'Salt')
RecipeIngredient.create(recipe: margarita, ingredient: salt, quantity: 'None')

Step.create(recipe: margarita, step_number: 1, instruction: 'Rub the rim of the glass with the lime slice to make the salt stick to it')
Step.create(recipe: margarita, step_number: 2, instruction: ' Take care to moisten only the outer rim and sprinkle the salt on it')
Step.create(recipe: margarita, step_number: 3, instruction: ' The salt should present to the lips of the imbiber and never mix into the cocktail')
Step.create(recipe: margarita, step_number: 4, instruction: ' Shake the other ingredients with ice, then carefully pour into the glass')

espresso_martini = Recipe.create(name: 'Espresso Martini', description: 'Placeholder', img_link:'nil')

vodka = Ingredient.find_or_create_by(name: 'Vodka')
RecipeIngredient.create(recipe: espresso_martini, ingredient: vodka, quantity: '5 cl')
kahlua = Ingredient.find_or_create_by(name: 'Kahlua')
RecipeIngredient.create(recipe: espresso_martini, ingredient: kahlua, quantity: '1 cl')
sugar_syrup = Ingredient.find_or_create_by(name: 'Sugar syrup')
RecipeIngredient.create(recipe: espresso_martini, ingredient: sugar_syrup, quantity: '1 dash')


whiskey_sour = Recipe.create(name: 'Whiskey Sour', description: 'Placeholder', img_link:'https://www.thecocktaildb.com/images/media/drink/hbkfsh1589574990.jpg')

blended_whiskey = Ingredient.find_or_create_by(name: 'Blended whiskey')
RecipeIngredient.create(recipe: whiskey_sour, ingredient: blended_whiskey, quantity: '2 oz ')
lemon = Ingredient.find_or_create_by(name: 'Lemon')
RecipeIngredient.create(recipe: whiskey_sour, ingredient: lemon, quantity: 'Juice of 1/2 ')
powdered_sugar = Ingredient.find_or_create_by(name: 'Powdered sugar')
RecipeIngredient.create(recipe: whiskey_sour, ingredient: powdered_sugar, quantity: '1/2 tsp ')
cherry = Ingredient.find_or_create_by(name: 'Cherry')
RecipeIngredient.create(recipe: whiskey_sour, ingredient: cherry, quantity: '1 ')
lemon = Ingredient.find_or_create_by(name: 'Lemon')
RecipeIngredient.create(recipe: whiskey_sour, ingredient: lemon, quantity: '1/2 slice ')

Step.create(recipe: whiskey_sour, step_number: 1, instruction: 'Shake with ice')
Step.create(recipe: whiskey_sour, step_number: 2, instruction: ' Strain into chilled glass, garnish and serve')
Step.create(recipe: whiskey_sour, step_number: 3, instruction: ' If served On the rocks, strain ingredients into old-fashioned glass filled with ice')

manhattan = Recipe.create(name: 'Manhattan', description: 'Placeholder', img_link:'https://www.thecocktaildb.com/images/media/drink/yk70e31606771240.jpg')

sweet_vermouth = Ingredient.find_or_create_by(name: 'Sweet Vermouth')
RecipeIngredient.create(recipe: manhattan, ingredient: sweet_vermouth, quantity: '3/4 oz ')
bourbon = Ingredient.find_or_create_by(name: 'Bourbon')
RecipeIngredient.create(recipe: manhattan, ingredient: bourbon, quantity: '2 1/2 oz Blended ')
angostura_bitters = Ingredient.find_or_create_by(name: 'Angostura bitters')
RecipeIngredient.create(recipe: manhattan, ingredient: angostura_bitters, quantity: 'dash ')
ice = Ingredient.find_or_create_by(name: 'Ice')
RecipeIngredient.create(recipe: manhattan, ingredient: ice, quantity: '2 or 3 ')
maraschino_cherry = Ingredient.find_or_create_by(name: 'Maraschino cherry')
RecipeIngredient.create(recipe: manhattan, ingredient: maraschino_cherry, quantity: '1 ')
orange_peel = Ingredient.find_or_create_by(name: 'Orange peel')
RecipeIngredient.create(recipe: manhattan, ingredient: orange_peel, quantity: '1 twist of ')

Step.create(recipe: manhattan, step_number: 1, instruction: 'Stirred over ice, strained into a chilled glass, garnished, and served up')

aperol_spritz = Recipe.create(name: 'Aperol Spritz', description: 'Placeholder', img_link:'https://www.thecocktaildb.com/images/media/drink/iloasq1587661955.jpg')

aperol = Ingredient.find_or_create_by(name: 'Aperol')
RecipeIngredient.create(recipe: aperol_spritz, ingredient: aperol, quantity: '100 ml')
prosecco = Ingredient.find_or_create_by(name: 'Prosecco')
RecipeIngredient.create(recipe: aperol_spritz, ingredient: prosecco, quantity: '150 ml')
soda_water = Ingredient.find_or_create_by(name: 'Soda Water')
RecipeIngredient.create(recipe: aperol_spritz, ingredient: soda_water, quantity: 'Top')

Step.create(recipe: aperol_spritz, step_number: 1, instruction: 'Put a couple of cubes of ice into 2 glasses and add a 50 ml measure of Aperol to each')
Step.create(recipe: aperol_spritz, step_number: 2, instruction: ' Divide the prosecco between the glasses and then top up with soda, if you like')

mojito = Recipe.create(name: 'Mojito', description: 'Placeholder', img_link:'https://www.thecocktaildb.com/images/media/drink/metwgh1606770327.jpg')

light_rum = Ingredient.find_or_create_by(name: 'Light rum')
RecipeIngredient.create(recipe: mojito, ingredient: light_rum, quantity: '2-3 oz ')
lime = Ingredient.find_or_create_by(name: 'Lime')
RecipeIngredient.create(recipe: mojito, ingredient: lime, quantity: 'Juice of 1 ')
sugar = Ingredient.find_or_create_by(name: 'Sugar')
RecipeIngredient.create(recipe: mojito, ingredient: sugar, quantity: '2 tsp ')
mint = Ingredient.find_or_create_by(name: 'Mint')
RecipeIngredient.create(recipe: mojito, ingredient: mint, quantity: '2-4 ')
soda_water = Ingredient.find_or_create_by(name: 'Soda water')
RecipeIngredient.create(recipe: mojito, ingredient: soda_water, quantity: 'None')

Step.create(recipe: mojito, step_number: 1, instruction: 'Muddle mint leaves with sugar and lime juice')
Step.create(recipe: mojito, step_number: 2, instruction: ' Add a splash of soda water and fill the glass with cracked ice')
Step.create(recipe: mojito, step_number: 3, instruction: ' Pour the rum and top with soda water')
Step.create(recipe: mojito, step_number: 4, instruction: ' Garnish and serve with straw')

bloody_mary = Recipe.create(name: 'Bloody Mary', description: 'Placeholder', img_link:'https://www.thecocktaildb.com/images/media/drink/t6caa21582485702.jpg')

vodka = Ingredient.find_or_create_by(name: 'Vodka')
RecipeIngredient.create(recipe: bloody_mary, ingredient: vodka, quantity: '1 1/2 oz ')
tomato_juice = Ingredient.find_or_create_by(name: 'Tomato juice')
RecipeIngredient.create(recipe: bloody_mary, ingredient: tomato_juice, quantity: '3 oz ')
lemon_juice = Ingredient.find_or_create_by(name: 'Lemon juice')
RecipeIngredient.create(recipe: bloody_mary, ingredient: lemon_juice, quantity: '1 dash ')
worcestershire_sauce = Ingredient.find_or_create_by(name: 'Worcestershire sauce')
RecipeIngredient.create(recipe: bloody_mary, ingredient: worcestershire_sauce, quantity: '1/2 tsp ')
tabasco_sauce = Ingredient.find_or_create_by(name: 'Tabasco sauce')
RecipeIngredient.create(recipe: bloody_mary, ingredient: tabasco_sauce, quantity: '2-3 drops ')
lime = Ingredient.find_or_create_by(name: 'Lime')
RecipeIngredient.create(recipe: bloody_mary, ingredient: lime, quantity: '1 wedge ')

Step.create(recipe: bloody_mary, step_number: 1, instruction: 'Stirring gently, pour all ingredients into highball glass')
Step.create(recipe: bloody_mary, step_number: 2, instruction: ' Garnish')

gimlet = Recipe.create(name: 'Gimlet', description: 'Placeholder', img_link:'nil')

gin = Ingredient.find_or_create_by(name: 'Gin')
RecipeIngredient.create(recipe: gimlet, ingredient: gin, quantity: '2 1/2 oz')
lime_juice = Ingredient.find_or_create_by(name: 'Lime Juice')
RecipeIngredient.create(recipe: gimlet, ingredient: lime_juice, quantity: '1/2 oz')
sugar_syrup = Ingredient.find_or_create_by(name: 'Sugar Syrup')
RecipeIngredient.create(recipe: gimlet, ingredient: sugar_syrup, quantity: '1/2 oz')
lime = Ingredient.find_or_create_by(name: 'Lime')
RecipeIngredient.create(recipe: gimlet, ingredient: lime, quantity: '1')

Step.create(recipe: gimlet, step_number: 1, instruction: 'Add all the ingredients to a shaker and fill with ice')
Step.create(recipe: gimlet, step_number: 2, instruction: 'Shake, and strain into a chilled cocktail glass or an Old Fashioned glass filled with fresh ice')
Step.create(recipe: gimlet, step_number: 3, instruction: 'Garnish with a lime wheel')

moscow_mule = Recipe.create(name: 'Moscow Mule', description: 'Placeholder', img_link:'https://www.thecocktaildb.com/images/media/drink/3pylqc1504370988.jpg')

vodka = Ingredient.find_or_create_by(name: 'Vodka')
RecipeIngredient.create(recipe: moscow_mule, ingredient: vodka, quantity: '2 oz ')
lime_juice = Ingredient.find_or_create_by(name: 'Lime juice')
RecipeIngredient.create(recipe: moscow_mule, ingredient: lime_juice, quantity: '2 oz ')
ginger_ale = Ingredient.find_or_create_by(name: 'Ginger ale')
RecipeIngredient.create(recipe: moscow_mule, ingredient: ginger_ale, quantity: '8 oz ')

Step.create(recipe: moscow_mule, step_number: 1, instruction: 'Combine vodka and ginger beer in a highball glass filled with ice')
Step.create(recipe: moscow_mule, step_number: 2, instruction: ' Add lime juice')
Step.create(recipe: moscow_mule, step_number: 3, instruction: ' Stir gently')
Step.create(recipe: moscow_mule, step_number: 4, instruction: ' Garnish')

penicillin = Recipe.create(name: 'Penicillin', description: 'Placeholder', img_link:'nil')

blended_scotch = Ingredient.find_or_create_by(name: 'Blended Scotch')
RecipeIngredient.create(recipe: penicillin, ingredient: blended_scotch, quantity: '2 oz')
lemon_juice = Ingredient.find_or_create_by(name: 'Lemon Juice')
RecipeIngredient.create(recipe: penicillin, ingredient: lemon_juice, quantity: '3/4 oz')
honey_syrup = Ingredient.find_or_create_by(name: 'Honey syrup')
RecipeIngredient.create(recipe: penicillin, ingredient: honey_syrup, quantity: '2 tsp')
ginger_syrup = Ingredient.find_or_create_by(name: 'Ginger Syrup')
RecipeIngredient.create(recipe: penicillin, ingredient: ginger_syrup, quantity: '2 tsp')
islay_single_malt_scotch = Ingredient.find_or_create_by(name: 'Islay single malt Scotch')
RecipeIngredient.create(recipe: penicillin, ingredient: islay_single_malt_scotch, quantity: '1/4 oz')

Step.create(recipe: penicillin, step_number: 1, instruction: 'Shake blended Scotch, lemon juice, honey syrup and ginger syrup with ice')
Step.create(recipe: penicillin, step_number: 2, instruction: ' Strain over large ice in chilled rocks glass')
Step.create(recipe: penicillin, step_number: 3, instruction: ' Float smoky Scotch on top (be sure to use a smoky Scotch such as an Islay single malt)')
Step.create(recipe: penicillin, step_number: 4, instruction: ' Garnish with candied ginger')

dark_and_stormy = Recipe.create(name: 'Dark and Stormy', description: 'Placeholder', img_link:'nil')

dark_rum = Ingredient.find_or_create_by(name: 'Dark Rum')
RecipeIngredient.create(recipe: dark_and_stormy, ingredient: dark_rum, quantity: '5 cl')
ginger_beer = Ingredient.find_or_create_by(name: 'Ginger Beer')
RecipeIngredient.create(recipe: dark_and_stormy, ingredient: ginger_beer, quantity: '10 cl')

Step.create(recipe: dark_and_stormy, step_number: 1, instruction: 'In a highball glass filled with ice add 6cl dark rum and top with ginger beer')
Step.create(recipe: dark_and_stormy, step_number: 2, instruction: ' Garnish with lime wedge')

corpse_reviver = Recipe.create(name: 'Corpse Reviver', description: 'Placeholder', img_link:'nil')

gin = Ingredient.find_or_create_by(name: 'Gin')
RecipeIngredient.create(recipe: corpse_reviver, ingredient: gin, quantity: '3/4 oz')
triple_sec = Ingredient.find_or_create_by(name: 'Triple Sec')
RecipeIngredient.create(recipe: corpse_reviver, ingredient: triple_sec, quantity: '3/4 oz')
lillet_blanc = Ingredient.find_or_create_by(name: 'Lillet Blanc')
RecipeIngredient.create(recipe: corpse_reviver, ingredient: lillet_blanc, quantity: '3/4 oz')
lemon_juice = Ingredient.find_or_create_by(name: 'Lemon Juice')
RecipeIngredient.create(recipe: corpse_reviver, ingredient: lemon_juice, quantity: '3/4 oz')
absinthe = Ingredient.find_or_create_by(name: 'Absinthe')
RecipeIngredient.create(recipe: corpse_reviver, ingredient: absinthe, quantity: '1 dash')


clover_club = Recipe.create(name: 'Clover Club', description: 'Placeholder', img_link:'nil')

gin = Ingredient.find_or_create_by(name: 'Gin')
RecipeIngredient.create(recipe: clover_club, ingredient: gin, quantity: '1 1/2 oz ')
grenadine = Ingredient.find_or_create_by(name: 'Grenadine')
RecipeIngredient.create(recipe: clover_club, ingredient: grenadine, quantity: '2 tsp ')
lemon = Ingredient.find_or_create_by(name: 'Lemon')
RecipeIngredient.create(recipe: clover_club, ingredient: lemon, quantity: 'Juice of 1/2 ')
egg_white = Ingredient.find_or_create_by(name: 'Egg white')
RecipeIngredient.create(recipe: clover_club, ingredient: egg_white, quantity: '1 ')

Step.create(recipe: clover_club, step_number: 1, instruction: 'Dry shake ingredients to emulsify, add ice, shake and served straight up')

boulevardier = Recipe.create(name: 'Boulevardier', description: 'Placeholder', img_link:'nil')

campari = Ingredient.find_or_create_by(name: 'Campari')
RecipeIngredient.create(recipe: boulevardier, ingredient: campari, quantity: '1 oz')
sweet_vermouth = Ingredient.find_or_create_by(name: 'Sweet Vermouth')
RecipeIngredient.create(recipe: boulevardier, ingredient: sweet_vermouth, quantity: '1 oz')
rye_whiskey = Ingredient.find_or_create_by(name: 'Rye whiskey')
RecipeIngredient.create(recipe: boulevardier, ingredient: rye_whiskey, quantity: '1 1/4 oz')
orange_peel = Ingredient.find_or_create_by(name: 'Orange Peel')
RecipeIngredient.create(recipe: boulevardier, ingredient: orange_peel, quantity: '1')

Step.create(recipe: boulevardier, step_number: 1, instruction: 'Stir with ice, strain, garnish and serve')

mai_tai = Recipe.create(name: 'Mai Tai', description: 'Placeholder', img_link:'https://www.thecocktaildb.com/images/media/drink/twyrrp1439907470.jpg')

light_rum = Ingredient.find_or_create_by(name: 'Light rum')
RecipeIngredient.create(recipe: mai_tai, ingredient: light_rum, quantity: '1 oz ')
orgeat_syrup = Ingredient.find_or_create_by(name: 'Orgeat syrup')
RecipeIngredient.create(recipe: mai_tai, ingredient: orgeat_syrup, quantity: '1/2 oz ')
triple_sec = Ingredient.find_or_create_by(name: 'Triple sec')
RecipeIngredient.create(recipe: mai_tai, ingredient: triple_sec, quantity: '1/2 oz ')
sweet_and_sour = Ingredient.find_or_create_by(name: 'Sweet and sour')
RecipeIngredient.create(recipe: mai_tai, ingredient: sweet_and_sour, quantity: '1 1/2 oz ')
cherry = Ingredient.find_or_create_by(name: 'Cherry')
RecipeIngredient.create(recipe: mai_tai, ingredient: cherry, quantity: '1 ')

Step.create(recipe: mai_tai, step_number: 1, instruction: 'Shake all ingredients with ice')
Step.create(recipe: mai_tai, step_number: 2, instruction: ' Strain into glass')
Step.create(recipe: mai_tai, step_number: 3, instruction: ' Garnish and serve with straw')

sazerac = Recipe.create(name: 'Sazerac', description: 'Placeholder', img_link:'nil')

ricard = Ingredient.find_or_create_by(name: 'Ricard')
RecipeIngredient.create(recipe: sazerac, ingredient: ricard, quantity: '1 tsp ')
sugar = Ingredient.find_or_create_by(name: 'Sugar')
RecipeIngredient.create(recipe: sazerac, ingredient: sugar, quantity: '1/2 tsp superfine ')
peychaud_bitters = Ingredient.find_or_create_by(name: 'Peychaud bitters')
RecipeIngredient.create(recipe: sazerac, ingredient: peychaud_bitters, quantity: '2 dashes ')
water = Ingredient.find_or_create_by(name: 'Water')
RecipeIngredient.create(recipe: sazerac, ingredient: water, quantity: '1 tsp ')
bourbon = Ingredient.find_or_create_by(name: 'Bourbon')
RecipeIngredient.create(recipe: sazerac, ingredient: bourbon, quantity: '2 oz ')
lemon_peel = Ingredient.find_or_create_by(name: 'Lemon peel')
RecipeIngredient.create(recipe: sazerac, ingredient: lemon_peel, quantity: '1 twist of ')

Step.create(recipe: sazerac, step_number: 1, instruction: 'Rinse a chilled old-fashioned glass with the absinthe, add crushed ice, and set it aside')
Step.create(recipe: sazerac, step_number: 2, instruction: ' Stir the remaining ingredients over ice and set it aside')
Step.create(recipe: sazerac, step_number: 3, instruction: ' Discard the ice and any excess absinthe from the prepared glass, and strain the drink into the glass')
Step.create(recipe: sazerac, step_number: 4, instruction: ' Add the lemon peel for garnish')

french_75 = Recipe.create(name: 'French 75', description: 'Placeholder', img_link:'https://www.thecocktaildb.com/images/media/drink/hrxfbl1606773109.jpg')

gin = Ingredient.find_or_create_by(name: 'Gin')
RecipeIngredient.create(recipe: french_75, ingredient: gin, quantity: '1 1/2 oz ')
sugar = Ingredient.find_or_create_by(name: 'Sugar')
RecipeIngredient.create(recipe: french_75, ingredient: sugar, quantity: '2 tsp superfine ')
lemon_juice = Ingredient.find_or_create_by(name: 'Lemon juice')
RecipeIngredient.create(recipe: french_75, ingredient: lemon_juice, quantity: '1 1/2 oz ')
champagne = Ingredient.find_or_create_by(name: 'Champagne')
RecipeIngredient.create(recipe: french_75, ingredient: champagne, quantity: '4 oz Chilled ')
orange = Ingredient.find_or_create_by(name: 'Orange')
RecipeIngredient.create(recipe: french_75, ingredient: orange, quantity: '1 ')
maraschino_cherry = Ingredient.find_or_create_by(name: 'Maraschino cherry')
RecipeIngredient.create(recipe: french_75, ingredient: maraschino_cherry, quantity: '1 ')

Step.create(recipe: french_75, step_number: 1, instruction: 'Combine gin, sugar, and lemon juice in a cocktail shaker filled with ice')
Step.create(recipe: french_75, step_number: 2, instruction: ' Shake vigorously and strain into a chilled champagne glass')
Step.create(recipe: french_75, step_number: 3, instruction: ' Top up with Champagne')
Step.create(recipe: french_75, step_number: 4, instruction: ' Stir gently')

paloma = Recipe.create(name: 'Paloma', description: 'Placeholder', img_link:'nil')

grape_soda = Ingredient.find_or_create_by(name: 'Grape Soda')
RecipeIngredient.create(recipe: paloma, ingredient: grape_soda, quantity: '3 oz')
tequila = Ingredient.find_or_create_by(name: 'Tequila')
RecipeIngredient.create(recipe: paloma, ingredient: tequila, quantity: '1 1/2 oz')

Step.create(recipe: paloma, step_number: 1, instruction: 'Stir together and serve over ice')

pisco_sour = Recipe.create(name: 'Pisco Sour', description: 'Placeholder', img_link:'nil')

pisco = Ingredient.find_or_create_by(name: 'Pisco')
RecipeIngredient.create(recipe: pisco_sour, ingredient: pisco, quantity: '2 oz ')
lemon_juice = Ingredient.find_or_create_by(name: 'Lemon juice')
RecipeIngredient.create(recipe: pisco_sour, ingredient: lemon_juice, quantity: '1 oz ')
sugar = Ingredient.find_or_create_by(name: 'Sugar')
RecipeIngredient.create(recipe: pisco_sour, ingredient: sugar, quantity: '1-2 tblsp ')
ice = Ingredient.find_or_create_by(name: 'Ice')
RecipeIngredient.create(recipe: pisco_sour, ingredient: ice, quantity: '1')
egg_white = Ingredient.find_or_create_by(name: 'Egg White')
RecipeIngredient.create(recipe: pisco_sour, ingredient: egg_white, quantity: 'None')

Step.create(recipe: pisco_sour, step_number: 1, instruction: 'Vigorously shake and strain contents in a cocktail shaker with ice cubes, then pour into glass and garnish with bitters')

americano = Recipe.create(name: 'Americano', description: 'Placeholder', img_link:'https://www.thecocktaildb.com/images/media/drink/709s6m1613655124.jpg')

campari = Ingredient.find_or_create_by(name: 'Campari')
RecipeIngredient.create(recipe: americano, ingredient: campari, quantity: '1 oz ')
sweet_vermouth = Ingredient.find_or_create_by(name: 'Sweet Vermouth')
RecipeIngredient.create(recipe: americano, ingredient: sweet_vermouth, quantity: '1 oz red ')
lemon_peel = Ingredient.find_or_create_by(name: 'Lemon peel')
RecipeIngredient.create(recipe: americano, ingredient: lemon_peel, quantity: 'Twist of ')
orange_peel = Ingredient.find_or_create_by(name: 'Orange peel')
RecipeIngredient.create(recipe: americano, ingredient: orange_peel, quantity: 'Twist of ')

Step.create(recipe: americano, step_number: 1, instruction: 'Pour the Campari and vermouth over ice into glass, add a splash of soda water and garnish with half orange slice')

amaretto_sour = Recipe.create(name: 'Amaretto Sour', description: 'Placeholder', img_link:'nil')

amaretto = Ingredient.find_or_create_by(name: 'Amaretto')
RecipeIngredient.create(recipe: amaretto_sour, ingredient: amaretto, quantity: '1 1/2 oz ')
sour_mix = Ingredient.find_or_create_by(name: 'Sour mix')
RecipeIngredient.create(recipe: amaretto_sour, ingredient: sour_mix, quantity: '3 oz ')

Step.create(recipe: amaretto_sour, step_number: 1, instruction: 'Shake and strain')
Step.create(recipe: amaretto_sour, step_number: 2, instruction: ' Garnish with a cherry and an orange slice')

gin_fizz = Recipe.create(name: 'Gin Fizz', description: 'Placeholder', img_link:'https://www.thecocktaildb.com/images/media/drink/drtihp1606768397.jpg')

gin = Ingredient.find_or_create_by(name: 'Gin')
RecipeIngredient.create(recipe: gin_fizz, ingredient: gin, quantity: '2 oz ')
lemon = Ingredient.find_or_create_by(name: 'Lemon')
RecipeIngredient.create(recipe: gin_fizz, ingredient: lemon, quantity: 'Juice of 1/2 ')
powdered_sugar = Ingredient.find_or_create_by(name: 'Powdered sugar')
RecipeIngredient.create(recipe: gin_fizz, ingredient: powdered_sugar, quantity: '1 tsp ')
carbonated_water = Ingredient.find_or_create_by(name: 'Carbonated water')
RecipeIngredient.create(recipe: gin_fizz, ingredient: carbonated_water, quantity: 'None')

Step.create(recipe: gin_fizz, step_number: 1, instruction: 'Shake all ingredients with ice cubes, except soda water')
Step.create(recipe: gin_fizz, step_number: 2, instruction: ' Pour into glass')
Step.create(recipe: gin_fizz, step_number: 3, instruction: ' Top with soda water')

bramble = Recipe.create(name: 'Bramble', description: 'Placeholder', img_link:'https://www.thecocktaildb.com/images/media/drink/twtbh51630406392.jpg')

gin = Ingredient.find_or_create_by(name: 'Gin')
RecipeIngredient.create(recipe: bramble, ingredient: gin, quantity: '4 cl')
lemon_juice = Ingredient.find_or_create_by(name: 'lemon juice')
RecipeIngredient.create(recipe: bramble, ingredient: lemon_juice, quantity: '1.5 cl')
sugar_syrup = Ingredient.find_or_create_by(name: 'Sugar syrup')
RecipeIngredient.create(recipe: bramble, ingredient: sugar_syrup, quantity: '1 cl')
creme_de_mure = Ingredient.find_or_create_by(name: 'Creme de Mure')
RecipeIngredient.create(recipe: bramble, ingredient: creme_de_mure, quantity: '1.5 cl')

Step.create(recipe: bramble, step_number: 1, instruction: 'Fill glass with crushed ice')
Step.create(recipe: bramble, step_number: 2, instruction: ' Build gin, lemon juice and simple syrup over')
Step.create(recipe: bramble, step_number: 3, instruction: ' Stir, and then pour blackberry liqueur over in a circular fashion to create marbling effect')
Step.create(recipe: bramble, step_number: 4, instruction: ' Garnish with two blackberries and lemon slice')

bellini = Recipe.create(name: 'Bellini', description: 'Placeholder', img_link:'nil')

champagne = Ingredient.find_or_create_by(name: 'Champagne')
RecipeIngredient.create(recipe: bellini, ingredient: champagne, quantity: '6 oz ')
peach_schnapps = Ingredient.find_or_create_by(name: 'Peach schnapps')
RecipeIngredient.create(recipe: bellini, ingredient: peach_schnapps, quantity: '1 oz ')

Step.create(recipe: bellini, step_number: 1, instruction: 'Pour peach purée into chilled flute, add sparkling wine')
Step.create(recipe: bellini, step_number: 2, instruction: ' Stir gently')

pina_colada = Recipe.create(name: 'Pina Colada', description: 'Placeholder', img_link:'https://www.thecocktaildb.com/images/media/drink/upgsue1668419912.jpg')

light_rum = Ingredient.find_or_create_by(name: 'Light rum')
RecipeIngredient.create(recipe: pina_colada, ingredient: light_rum, quantity: '3 oz ')
coconut_milk = Ingredient.find_or_create_by(name: 'Coconut milk')
RecipeIngredient.create(recipe: pina_colada, ingredient: coconut_milk, quantity: '3 tblsp ')
pineapple = Ingredient.find_or_create_by(name: 'Pineapple')
RecipeIngredient.create(recipe: pina_colada, ingredient: pineapple, quantity: '3 tblsp ')

Step.create(recipe: pina_colada, step_number: 1, instruction: 'Mix with crushed ice in blender until smooth')
Step.create(recipe: pina_colada, step_number: 2, instruction: ' Pour into chilled glass, garnish and serve')

orgasm = Recipe.create(name: 'Orgasm', description: 'Placeholder', img_link:'nil')

creme_de_cacao = Ingredient.find_or_create_by(name: 'Creme de Cacao')
RecipeIngredient.create(recipe: orgasm, ingredient: creme_de_cacao, quantity: '1/2 oz white ')
amaretto = Ingredient.find_or_create_by(name: 'Amaretto')
RecipeIngredient.create(recipe: orgasm, ingredient: amaretto, quantity: '1/2 oz ')
triple_sec = Ingredient.find_or_create_by(name: 'Triple sec')
RecipeIngredient.create(recipe: orgasm, ingredient: triple_sec, quantity: '1/2 oz ')
vodka = Ingredient.find_or_create_by(name: 'Vodka')
RecipeIngredient.create(recipe: orgasm, ingredient: vodka, quantity: '1/2 oz ')
light_cream = Ingredient.find_or_create_by(name: 'Light cream')
RecipeIngredient.create(recipe: orgasm, ingredient: light_cream, quantity: '1 oz ')

Step.create(recipe: orgasm, step_number: 1, instruction: 'Shake all ingredients with ice, strain into a chilled cocktail glass, and serve')

sidecar = Recipe.create(name: 'Sidecar', description: 'Placeholder', img_link:'https://www.thecocktaildb.com/images/media/drink/x72sik1606854964.jpg')

cognac = Ingredient.find_or_create_by(name: 'Cognac')
RecipeIngredient.create(recipe: sidecar, ingredient: cognac, quantity: '2 oz ')
cointreau = Ingredient.find_or_create_by(name: 'Cointreau')
RecipeIngredient.create(recipe: sidecar, ingredient: cointreau, quantity: '1/2 oz ')
lemon_juice = Ingredient.find_or_create_by(name: 'Lemon juice')
RecipeIngredient.create(recipe: sidecar, ingredient: lemon_juice, quantity: '1 oz ')

Step.create(recipe: sidecar, step_number: 1, instruction: 'Pour all ingredients into cocktail shaker filled with ice')
Step.create(recipe: sidecar, step_number: 2, instruction: ' Shake well and strain into cocktail glass')

aviation = Recipe.create(name: 'Aviation', description: 'Placeholder', img_link:'https://www.thecocktaildb.com/images/media/drink/trbplb1606855233.jpg')

gin = Ingredient.find_or_create_by(name: 'Gin')
RecipeIngredient.create(recipe: aviation, ingredient: gin, quantity: '4.5 cl')
lemon_juice = Ingredient.find_or_create_by(name: 'lemon juice')
RecipeIngredient.create(recipe: aviation, ingredient: lemon_juice, quantity: '1.5 cl')
maraschino_liqueur = Ingredient.find_or_create_by(name: 'maraschino liqueur')
RecipeIngredient.create(recipe: aviation, ingredient: maraschino_liqueur, quantity: '1.5 cl')

Step.create(recipe: aviation, step_number: 1, instruction: 'Add all ingredients into cocktail shaker filled with ice')
Step.create(recipe: aviation, step_number: 2, instruction: ' Shake well and strain into cocktail glass')
Step.create(recipe: aviation, step_number: 3, instruction: ' Garnish with a cherry')

irish_coffee = Recipe.create(name: 'Irish Coffee', description: 'Placeholder', img_link:'nil')

irish_whiskey = Ingredient.find_or_create_by(name: 'Irish whiskey')
RecipeIngredient.create(recipe: irish_coffee, ingredient: irish_whiskey, quantity: '1 1/2 oz ')
coffee = Ingredient.find_or_create_by(name: 'Coffee')
RecipeIngredient.create(recipe: irish_coffee, ingredient: coffee, quantity: '8 oz ')
sugar = Ingredient.find_or_create_by(name: 'Sugar')
RecipeIngredient.create(recipe: irish_coffee, ingredient: sugar, quantity: '1 tsp ')
whipped_cream = Ingredient.find_or_create_by(name: 'Whipped cream')
RecipeIngredient.create(recipe: irish_coffee, ingredient: whipped_cream, quantity: '1 tblsp ')

Step.create(recipe: irish_coffee, step_number: 1, instruction: 'Heat the coffee, whiskey and sugar; do not boil')
Step.create(recipe: irish_coffee, step_number: 2, instruction: ' Pour into glass and top with cream; serve hot')

last_word = Recipe.create(name: 'The Last Word', description: 'Placeholder', img_link:'nil')

green_chartreuse = Ingredient.find_or_create_by(name: 'Green Chartreuse')
RecipeIngredient.create(recipe: last_word, ingredient: green_chartreuse, quantity: '1 oz')
maraschino_liqueur = Ingredient.find_or_create_by(name: 'Maraschino Liqueur')
RecipeIngredient.create(recipe: last_word, ingredient: maraschino_liqueur, quantity: '1 oz')
lime_juice = Ingredient.find_or_create_by(name: 'Lime Juice')
RecipeIngredient.create(recipe: last_word, ingredient: lime_juice, quantity: '1 oz')
gin = Ingredient.find_or_create_by(name: 'Gin')
RecipeIngredient.create(recipe: last_word, ingredient: gin, quantity: '1 oz')

Step.create(recipe: last_word, step_number: 1, instruction: 'Shake with ice and strain into a cocktail glass')

tom_collins = Recipe.create(name: 'Tom Collins', description: 'Placeholder', img_link:'https://www.thecocktaildb.com/images/media/drink/7cll921606854636.jpg')

gin = Ingredient.find_or_create_by(name: 'Gin')
RecipeIngredient.create(recipe: tom_collins, ingredient: gin, quantity: '2 oz ')
lemon_juice = Ingredient.find_or_create_by(name: 'Lemon juice')
RecipeIngredient.create(recipe: tom_collins, ingredient: lemon_juice, quantity: '1 oz ')
sugar = Ingredient.find_or_create_by(name: 'Sugar')
RecipeIngredient.create(recipe: tom_collins, ingredient: sugar, quantity: '1 tsp superfine ')
club_soda = Ingredient.find_or_create_by(name: 'Club soda')
RecipeIngredient.create(recipe: tom_collins, ingredient: club_soda, quantity: '3 oz ')
maraschino_cherry = Ingredient.find_or_create_by(name: 'Maraschino cherry')
RecipeIngredient.create(recipe: tom_collins, ingredient: maraschino_cherry, quantity: '1 ')
orange = Ingredient.find_or_create_by(name: 'Orange')
RecipeIngredient.create(recipe: tom_collins, ingredient: orange, quantity: '1 ')

Step.create(recipe: tom_collins, step_number: 1, instruction: 'In a shaker half-filled with ice cubes, combine the gin, lemon juice, and sugar')
Step.create(recipe: tom_collins, step_number: 2, instruction: ' Shake well')
Step.create(recipe: tom_collins, step_number: 3, instruction: ' Strain into a collins glass alomst filled with ice cubes')
Step.create(recipe: tom_collins, step_number: 4, instruction: ' Add the club soda')
Step.create(recipe: tom_collins, step_number: 5, instruction: ' Stir and garnish with the cherry and the orange slice')

vodka_martini = Recipe.create(name: 'Vodka Martini', description: 'Placeholder', img_link:'nil')

vodka = Ingredient.find_or_create_by(name: 'Vodka')
RecipeIngredient.create(recipe: vodka_martini, ingredient: vodka, quantity: '1 1/2 oz ')
dry_vermouth = Ingredient.find_or_create_by(name: 'Dry Vermouth')
RecipeIngredient.create(recipe: vodka_martini, ingredient: dry_vermouth, quantity: '3/4 oz ')
olive = Ingredient.find_or_create_by(name: 'Olive')
RecipeIngredient.create(recipe: vodka_martini, ingredient: olive, quantity: '1 ')

Step.create(recipe: vodka_martini, step_number: 1, instruction: 'Shake the vodka and vermouth together with a number of ice cubes, strain into a cocktail glass, add the olive and serve')

zombie = Recipe.create(name: 'Zombie', description: 'Placeholder', img_link:'nil')

rum = Ingredient.find_or_create_by(name: 'Rum')
RecipeIngredient.create(recipe: zombie, ingredient: rum, quantity: '1 1/2 oz')
gold_rum = Ingredient.find_or_create_by(name: 'Gold rum')
RecipeIngredient.create(recipe: zombie, ingredient: gold_rum, quantity: '1 1/2 oz')
proof_rum = Ingredient.find_or_create_by(name: '151 proof rum')
RecipeIngredient.create(recipe: zombie, ingredient: proof_rum, quantity: '1 oz')
pernod = Ingredient.find_or_create_by(name: 'Pernod')
RecipeIngredient.create(recipe: zombie, ingredient: pernod, quantity: '1 tsp')
grenadine = Ingredient.find_or_create_by(name: 'Grenadine')
RecipeIngredient.create(recipe: zombie, ingredient: grenadine, quantity: '1 tsp')
lime_juice = Ingredient.find_or_create_by(name: 'Lime Juice')
RecipeIngredient.create(recipe: zombie, ingredient: lime_juice, quantity: '1 tsp')
angostura_bitters = Ingredient.find_or_create_by(name: 'Angostura Bitters')
RecipeIngredient.create(recipe: zombie, ingredient: angostura_bitters, quantity: '1 drop')

Step.create(recipe: zombie, step_number: 1, instruction: 'Blend at high speed for no more than 5 seconds')
Step.create(recipe: zombie, step_number: 2, instruction: 'Pour into a glass, add ice cubes to fill, then add the garnish')
Step.create(recipe: zombie, step_number: 3, instruction: '*Donn’s mix: Bring 3 crushed cinnamon sticks, 1 cup of sugar and 1 cup of water to a boil, stirring until the sugar is dissolved')
Step.create(recipe: zombie, step_number: 4, instruction: 'Simmer for 2 minutes, then remove from the heat and let sit for at least 2 hours before straining into a clean glass bottle')
Step.create(recipe: zombie, step_number: 5, instruction: 'Then add 1 part of the syrup and 2 parts of fresh grapefruit juice together')

cosmopolitan = Recipe.create(name: 'Cosmopolitan', description: 'Placeholder', img_link:'nil')

vodka = Ingredient.find_or_create_by(name: 'Vodka')
RecipeIngredient.create(recipe: cosmopolitan, ingredient: vodka, quantity: '1 1/4 oz ')
lime_juice = Ingredient.find_or_create_by(name: 'Lime juice')
RecipeIngredient.create(recipe: cosmopolitan, ingredient: lime_juice, quantity: '1/4 oz ')
cointreau = Ingredient.find_or_create_by(name: 'Cointreau')
RecipeIngredient.create(recipe: cosmopolitan, ingredient: cointreau, quantity: '1/4 oz ')
cranberry_juice = Ingredient.find_or_create_by(name: 'Cranberry juice')
RecipeIngredient.create(recipe: cosmopolitan, ingredient: cranberry_juice, quantity: '1/4 cup ')

Step.create(recipe: cosmopolitan, step_number: 1, instruction: 'Add all ingredients into cocktail shaker filled with ice')
Step.create(recipe: cosmopolitan, step_number: 2, instruction: ' Shake well and double strain into large cocktail glass')
Step.create(recipe: cosmopolitan, step_number: 3, instruction: ' Garnish with lime wheel')

white_lady = Recipe.create(name: 'White Lady', description: 'Placeholder', img_link:'nil')

gin = Ingredient.find_or_create_by(name: 'Gin')
RecipeIngredient.create(recipe: white_lady, ingredient: gin, quantity: '4cl')
triple_sec = Ingredient.find_or_create_by(name: 'Triple Sec')
RecipeIngredient.create(recipe: white_lady, ingredient: triple_sec, quantity: '3cl')
lemon_juice = Ingredient.find_or_create_by(name: 'Lemon Juice')
RecipeIngredient.create(recipe: white_lady, ingredient: lemon_juice, quantity: '2cl')

Step.create(recipe: white_lady, step_number: 1, instruction: 'Add all ingredients into cocktail shaker filled with ice')
Step.create(recipe: white_lady, step_number: 2, instruction: ' Shake well and strain into large cocktail glass')

long_island_iced_tea = Recipe.create(name: 'Long Island Iced Tea', description: 'Placeholder', img_link:'nil')

vodka = Ingredient.find_or_create_by(name: 'Vodka')
RecipeIngredient.create(recipe: long_island_iced_tea, ingredient: vodka, quantity: '1/2 oz ')
tequila = Ingredient.find_or_create_by(name: 'Tequila')
RecipeIngredient.create(recipe: long_island_iced_tea, ingredient: tequila, quantity: '1/2 oz ')
light_rum = Ingredient.find_or_create_by(name: 'Light rum')
RecipeIngredient.create(recipe: long_island_iced_tea, ingredient: light_rum, quantity: '1/2 oz ')
gin = Ingredient.find_or_create_by(name: 'Gin')
RecipeIngredient.create(recipe: long_island_iced_tea, ingredient: gin, quantity: '1/2 oz ')
coca_cola = Ingredient.find_or_create_by(name: 'Coca-Cola')
RecipeIngredient.create(recipe: long_island_iced_tea, ingredient: coca_cola, quantity: '1 dash ')
lemon_peel = Ingredient.find_or_create_by(name: 'Lemon peel')
RecipeIngredient.create(recipe: long_island_iced_tea, ingredient: lemon_peel, quantity: 'Twist of ')

Step.create(recipe: long_island_iced_tea, step_number: 1, instruction: 'Mix all contents in a highball glass and sitr gently')
Step.create(recipe: long_island_iced_tea, step_number: 2, instruction: ' Add dash of Coca-Cola for the coloring and garnish with lemon or lime twist')

singapore_sling = Recipe.create(name: 'Singapore Sling', description: 'Placeholder', img_link:'https://www.thecocktaildb.com/images/media/drink/7dozeg1582578095.jpg')

cherry_brandy = Ingredient.find_or_create_by(name: 'Cherry brandy')
RecipeIngredient.create(recipe: singapore_sling, ingredient: cherry_brandy, quantity: '1/2 oz ')
grenadine = Ingredient.find_or_create_by(name: 'Grenadine')
RecipeIngredient.create(recipe: singapore_sling, ingredient: grenadine, quantity: '1/2 oz ')
gin = Ingredient.find_or_create_by(name: 'Gin')
RecipeIngredient.create(recipe: singapore_sling, ingredient: gin, quantity: '1 oz ')
sweet_and_sour = Ingredient.find_or_create_by(name: 'Sweet and sour')
RecipeIngredient.create(recipe: singapore_sling, ingredient: sweet_and_sour, quantity: '2 oz ')
carbonated_water = Ingredient.find_or_create_by(name: 'Carbonated water')
RecipeIngredient.create(recipe: singapore_sling, ingredient: carbonated_water, quantity: 'None')
cherry = Ingredient.find_or_create_by(name: 'Cherry')
RecipeIngredient.create(recipe: singapore_sling, ingredient: cherry, quantity: 'None')

Step.create(recipe: singapore_sling, step_number: 1, instruction: 'Pour all ingredients into cocktail shaker filled with ice cubes')
Step.create(recipe: singapore_sling, step_number: 2, instruction: ' Shake well')
Step.create(recipe: singapore_sling, step_number: 3, instruction: ' Strain into highball glass')
Step.create(recipe: singapore_sling, step_number: 4, instruction: ' Garnish with pineapple and cocktail cherry')

mint_julep = Recipe.create(name: 'Mint Julep', description: 'Placeholder', img_link:'nil')

mint = Ingredient.find_or_create_by(name: 'Mint')
RecipeIngredient.create(recipe: mint_julep, ingredient: mint, quantity: '4 fresh ')
bourbon = Ingredient.find_or_create_by(name: 'Bourbon')
RecipeIngredient.create(recipe: mint_julep, ingredient: bourbon, quantity: '2 1/2 oz ')
powdered_sugar = Ingredient.find_or_create_by(name: 'Powdered sugar')
RecipeIngredient.create(recipe: mint_julep, ingredient: powdered_sugar, quantity: '1 tsp ')
water = Ingredient.find_or_create_by(name: 'Water')
RecipeIngredient.create(recipe: mint_julep, ingredient: water, quantity: '2 tsp ')

Step.create(recipe: mint_julep, step_number: 1, instruction: 'In a highball glass gently muddle the mint, sugar and water')
Step.create(recipe: mint_julep, step_number: 2, instruction: ' Fill the glass with cracked ice, add Bourbon and stir well until the glass is well frosted')
Step.create(recipe: mint_julep, step_number: 3, instruction: ' Garnish with a mint sprig')

tequila_sunrise = Recipe.create(name: 'Tequila Sunrise', description: 'Placeholder', img_link:'nil')

tequila = Ingredient.find_or_create_by(name: 'Tequila')
RecipeIngredient.create(recipe: tequila_sunrise, ingredient: tequila, quantity: '2 measures ')
orange_juice = Ingredient.find_or_create_by(name: 'Orange juice')
RecipeIngredient.create(recipe: tequila_sunrise, ingredient: orange_juice, quantity: 'None')
grenadine = Ingredient.find_or_create_by(name: 'Grenadine')
RecipeIngredient.create(recipe: tequila_sunrise, ingredient: grenadine, quantity: 'None')

Step.create(recipe: tequila_sunrise, step_number: 1, instruction: 'Pour the tequila and orange juice into glass over ice')
Step.create(recipe: tequila_sunrise, step_number: 2, instruction: ' Add the grenadine, which will sink to the bottom')
Step.create(recipe: tequila_sunrise, step_number: 3, instruction: ' Stir gently to create the sunrise effect')
Step.create(recipe: tequila_sunrise, step_number: 4, instruction: ' Garnish and serve')

