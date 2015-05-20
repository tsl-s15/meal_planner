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
    @selected_recipe = SelectedRecipe.new(selected_recipe_params)

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
    @selected_recipe.update_attributes(selected_recipe_params )

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

  def selected_recipe_params
    params.require(:selected_recipe).permit(:user_id, :recipe_id)
  end
end
