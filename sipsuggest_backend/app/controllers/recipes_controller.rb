class RecipesController < ApplicationController
  before_action :set_recipe, only: [:show, :update, :destroy]

  # GET /recipes
  def index

    search_query = params[:search].capitalize

    if search_query == '' || search_query == 'All'
      @recipes = Recipe.includes(:ingredients, :steps).all
    else 
    ingredient = Ingredient.find_by(name: search_query)
      if ingredient
        @recipes = ingredient.recipes.includes(:ingredients, :steps)
        # render json: recipes.as_json(include: :ingredients)
      else
        return render json: { error: "Ingredient not found" }, status: :not_found
      end
      # @recipes = Recipe.joins(:ingredients)
      #                   .includes(:ingredients, :steps)
      #                   .where(ingredients: {name: search_query})
      #                   .distinct()
    end
    render json: @recipes, include: [:ingredients, :steps]
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
