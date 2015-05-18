class IngredientsController < ApplicationController
  def index
    @ingredients = Ingredient.all
  end

  def show
    @ingredient = Ingredient.find(params[:id])
  end

  def new
    @ingredient = Ingredient.new
  end

  def create
    @ingredient = Ingredient.new
    @ingredient.name = params[:name]
    @ingredient.category = params[:category]
    @ingredient.price_per_unit = params[:price_per_unit]
    @ingredient.unit = params[:unit]

    if @ingredient.save
      redirect_to ingredients_url, :notice => "Ingredient created successfully."
    else
      render 'new'
    end
  end

  def edit
    @ingredient = Ingredient.find(params[:id])
  end

  def update
    @ingredient = Ingredient.find(params[:id])

    @ingredient.name = params[:name]
    @ingredient.category = params[:category]
    @ingredient.price_per_unit = params[:price_per_unit]
    @ingredient.unit = params[:unit]

    if @ingredient.save
      redirect_to ingredient_url(@ingredient.id), :notice => "Ingredient updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @ingredient = Ingredient.find(params[:id])

    @ingredient.destroy

    redirect_to ingredients_url, :notice => "Ingredient deleted."
  end
end
