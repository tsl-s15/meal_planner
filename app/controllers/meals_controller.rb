class MealsController < ApplicationController
  def index
    @meals = Meal.all
  end

  def show
    @meal = Meal.find(params[:id])
  end

  def new
    @meal = Meal.new
  end

  def create
    @meal = Meal.new
    @meal.user_id = params[:user_id]
    @meal.recipe_id = params[:recipe_id]

    if @meal.save
      redirect_to meals_url, :notice => "Meal created successfully."
    else
      render 'new'
    end
  end

  def edit
    @meal = Meal.find(params[:id])
  end

  def update
    @meal = Meal.find(params[:id])

    @meal.user_id = params[:user_id]
    @meal.recipe_id = params[:recipe_id]

    if @meal.save
      redirect_to meal_url(@meal.id), :notice => "Meal updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @meal = Meal.find(params[:id])

    @meal.destroy

    redirect_to meals_url, :notice => "Meal deleted."
  end
end
