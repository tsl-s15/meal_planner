class SelectedRecipesController < ApplicationController
  def index
    @selected_recipes = SelectedRecipe.all
  end

  def show
    @selected_recipe = SelectedRecipe.find(params[:id])
  end

  def new
    @selected_recipe = SelectedRecipe.new
  end

  def create
    @selected_recipe = SelectedRecipe.new
    @selected_recipe.user_id = params[:user_id]
    @selected_recipe.recipe_id = params[:recipe_id]

    if @selected_recipe.save
      redirect_to selected_recipes_url, :notice => "Selected recipe created successfully."
    else
      render 'new'
    end
  end

  def edit
    @selected_recipe = SelectedRecipe.find(params[:id])
  end

  def update
    @selected_recipe = SelectedRecipe.find(params[:id])

    @selected_recipe.user_id = params[:user_id]
    @selected_recipe.recipe_id = params[:recipe_id]

    if @selected_recipe.save
      redirect_to selected_recipe_url(@selected_recipe.id), :notice => "Selected recipe updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @selected_recipe = SelectedRecipe.find(params[:id])

    @selected_recipe.destroy

    redirect_to selected_recipes_url, :notice => "Selected recipe deleted."
  end
end
