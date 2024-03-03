import requests
import json
import time
import string

# url = 'https://www.thecocktaildb.com/api/json/v1/1/search.php?s=old-fasionedsda'
# response = requests.get(url)

# # temp = ""
# print(response.status_code)  # Prints the status code of the response

# response_data = response.text

# # print(response_data)

# json_data = json.loads(response_data)

# print(json_data['drinks'] is None)

'''
# data received is in the form of a dict(list(dict)) where list has 1 or more items depending on the variation of the cocktail, for our purposes getting the first item should be fine.

# important values to retrieve:
# strDrink
# strInstructions
# strDrinkThumb
# strIngredient1
...
# strIngredient15 until none
# strMeasure1
...
# strMeasure15 until none
# strCreativeCommonsConfirmed check if yes


'''


file_path = 'seed_data_populator/top_50_cocktails.txt'
url = 'https://www.thecocktaildb.com/api/json/v1/1/search.php?s={}'

output = open('seed_data_populator/seed_data.txt', 'w', encoding='utf-8')

RECIPE_TEMPLATE =  "{recipe_var_name} = Recipe.create(name: '{cocktail_name}', description: '{description}', img_link:'{img_link}')\n"

INGREDIENT_TEMPLATE = "{ingredient_var_name} = Ingredient.find_or_create_by(name: '{ingredient_name}')\n"

RECIPE_INGREDIENT_TEMPLATE = "RecipeIngredient.create(recipe: {recipe_var_name}, ingredient: {ingredient_var_name}, quantity: '{quantity}')\n"

STEP_TEMPLATE = "Step.create(recipe: {recipe_var_name}, step_number: {number}, instruction: '{instruction}')\n"

# take in a json object, extract all ingredients and return as a list
def extractIngredientsAndQuantity(json_data):

    ingredient_identifier = 'strIngredient{}'
    quantity_identifier = 'strMeasure{}'

    output_ingredient_list = []
    output_quantity_list = []

    for i in range(1, 16):
        ingredient_string = ingredient_identifier.format(i)
        quantity_string = quantity_identifier.format(i)

        ingredient = json_data[ingredient_string]
        quantity = json_data[quantity_string]

        # number of ingredient and quantity is the same
        if ingredient is None:
            break
        
        output_ingredient_list.append(ingredient)
        output_quantity_list.append(quantity)

    return (output_ingredient_list, output_quantity_list)

def writeRecipe(file, recipe_var_name, cocktail_name, description, img_link): 
    
    file.write(RECIPE_TEMPLATE.format(recipe_var_name=recipe_var_name, cocktail_name=cocktail_name, description=description, img_link=img_link))
    file.write('\n')
    return

# def writeIngredients(file, ingredient_list): 
    
#     for ingredient in ingredient_list:
#         ingredient_var_name = ingredient.strip().replace(' ', '_').lower()
#         file.write(INGREDIENT_TEMPLATE.format(ingredient_var_name=ingredient_var_name, ingredient_name=ingredient))
#     file.write('\n')

def writeRecipeIngredientsAndIngredients(file, ingredient_list, quantity_list, recipe_var_name): 
    
    for (ingredient, quantity) in zip(ingredient_list, quantity_list):

        ingredient_var_name = ingredient.strip().replace(' ', '_').lower()
        ingredient = string.capwords(ingredient, sep=None)
        file.write(INGREDIENT_TEMPLATE.format(ingredient_var_name=ingredient_var_name, ingredient_name=ingredient))

        file.write(RECIPE_INGREDIENT_TEMPLATE.format(recipe_var_name=recipe_var_name, ingredient_var_name=ingredient_var_name, quantity=quantity))
    file.write('\n')


def writeInstructions(file, instructions, recipe_var_name):
    instructions = instructions.replace('\r', '').replace('\n', '').split('.')[:-1]

    for (index, instruction) in enumerate(instructions, start=1):
        # print(instruction)
        file.write(STEP_TEMPLATE.format(recipe_var_name=recipe_var_name, number=index, instruction=instruction))
    file.write('\n')

with open(file_path, 'r') as file:
    count = 1
    for cocktail_name in file:
        name = cocktail_name.strip().replace(' ', '_').lower()
        response = requests.get(url.format(name))
        json_data = json.loads(response.text)

        if (json_data['drinks'] is None):
            print("Cocktail not found: " + name)
            continue

        # get the first drink. API will return multiple drinks if there are variations to the cocktail
        data = json_data['drinks'][0]

        # extract variables
        drink_name = data['strDrink']
        instrctions = data['strInstructions']
        img_link = data['strDrinkThumb']
        # if data['strCreativeCommonsConfirmed'] == 'Yes':
        #     img_link = data['strDrinkThumb']
        # else:
        #     img_link = 'nil' 
        
        ingredients, quantity = extractIngredientsAndQuantity(data)

        writeRecipe(output, recipe_var_name=name, cocktail_name=drink_name, description='Placeholder', img_link=img_link)

        writeRecipeIngredientsAndIngredients(output, ingredient_list=ingredients, quantity_list=quantity, recipe_var_name=name)

        writeInstructions(output, instructions=instrctions, recipe_var_name=name)

        # throttle it so that its not recognize as a ddos attack
        print('---------------done with recipe {}--------------'.format(cocktail_name))
        count += 1
        time.sleep(2)


    


        



