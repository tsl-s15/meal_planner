class RecipesController < ApplicationController
  def index
    @recipes = Recipe.all
  end

  def show
    @recipe = Recipe.find(params[:id])
  end

  def new
    @recipe = Recipe.new
  end

  def create
    @recipe = Recipe.new
    @recipe.name = params[:name]
    @recipe.cuisine = params[:cuisine]
    @recipe.servings = params[:servings]
    @recipe.prep_time = params[:prep_time]
    @recipe.instructions = params[:instructions]
    @recipe.meal_category = params[:meal_category]
    @recipe.creator_id = params[:creator_id]

    if @recipe.save
      redirect_to recipes_url, :notice => "Recipe created successfully."
    else
      render 'new'
    end
  end

  def edit
    @recipe = Recipe.find(params[:id])
  end

  def update
    @recipe = Recipe.find(params[:id])

    @recipe.name = params[:name]
    @recipe.cuisine = params[:cuisine]
    @recipe.servings = params[:servings]
    @recipe.prep_time = params[:prep_time]
    @recipe.instructions = params[:instructions]
    @recipe.meal_category = params[:meal_category]
    @recipe.creator_id = params[:creator_id]

    if @recipe.save
      redirect_to recipe_url(@recipe.id), :notice => "Recipe updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @recipe = Recipe.find(params[:id])

    @recipe.destroy

    redirect_to recipes_url, :notice => "Recipe deleted."
  end
end
