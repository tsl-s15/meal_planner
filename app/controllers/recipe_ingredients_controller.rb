class RecipeIngredientsController < ApplicationController
  def index
    @recipe_ingredients = RecipeIngredient.all
  end

  def show
    @recipe_ingredient = RecipeIngredient.find(params[:id])
  end

  def new
    @recipe_ingredient = RecipeIngredient.new
  end

  def create
    @recipe_ingredient = RecipeIngredient.new
    @recipe_ingredient.recipe_id = params[:recipe_id]
    @recipe_ingredient.ingredient_id = params[:ingredient_id]
    @recipe_ingredient.amount = params[:amount]

    if @recipe_ingredient.save
      redirect_to recipe_ingredients_url, :notice => "Recipe ingredient created successfully."
    else
      render 'new'
    end
  end

  def edit
    @recipe_ingredient = RecipeIngredient.find(params[:id])
  end

  def update
    @recipe_ingredient = RecipeIngredient.find(params[:id])

    @recipe_ingredient.recipe_id = params[:recipe_id]
    @recipe_ingredient.ingredient_id = params[:ingredient_id]
    @recipe_ingredient.amount = params[:amount]

    if @recipe_ingredient.save
      redirect_to recipe_ingredient_url(@recipe_ingredient.id), :notice => "Recipe ingredient updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @recipe_ingredient = RecipeIngredient.find(params[:id])

    @recipe_ingredient.destroy

    redirect_to recipe_ingredients_url, :notice => "Recipe ingredient deleted."
  end
end
