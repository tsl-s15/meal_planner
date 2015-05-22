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
    @recipe = Recipe.new(recipe_params)

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

    @recipe.update_attributes(recipe_params)

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

  def recipe_params
    params.require(:recipe).permit(:name, :cuisine, :servings, :prep_time, :instructions, :meal_category, :creator_id)
  end
end
