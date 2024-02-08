class RecipesController < ApplicationController
  before_action :set_recipe, only: [:show, :update, :destroy]

  # GET /recipes
  def index

    search_query = params[:search]

    # change to .blank?
    if search_query.blank? || search_query.downcase == 'All'
      @recipes = Recipe.includes(:ingredients, :recipe_ingredients, :steps).all
    elsif search_query.downcase == 'random'
      @recipes = Array.wrap(Recipe.includes(:ingredients, :recipe_ingredients, :steps).order('RANDOM()').first)
    else 
      ingredient = Ingredient.where('name ILIKE ?', "%#{search_query}%").first
      if ingredient
        @recipes = ingredient.recipes.includes(:ingredients, :recipe_ingredients, :steps)
      else
        return render json: { error: "Ingredient not found" }, status: :not_found
      end

    end

    recipes_with_quantities = @recipes.map do |recipe|
      {
        **recipe.attributes, # Double splat operator which spreads the original hash into new hash
        ingredients: recipe.ingredients.map do |ingredient|
          recipe_ingredient = recipe.recipe_ingredients.find_by(ingredient_id: ingredient.id)
          {
            **ingredient.attributes,
            quantity: recipe_ingredient&.quantity # If it exists
          }
        end,
        steps: recipe.steps.map do |step|
          step.attributes 
        end
      }
    end
  
    render json: recipes_with_quantities
    
  end

  # GET /recipes/1
  def show
    render json: @recipe
  end

  # POST /recipes
  def create
    @recipe = Recipe.new(recipe_params)

    if @recipe.save
      render json: @recipe, status: :created, location: @recipe
    else
      render json: @recipe.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /recipes/1
  def update
    if @recipe.update(recipe_params)
      render json: @recipe
    else
      render json: @recipe.errors, status: :unprocessable_entity
    end
  end

  # DELETE /recipes/1
  def destroy
    @recipe.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_recipe
      @recipe = Recipe.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def recipe_params
      params.require(:recipe).permit(:name)
    end
end
