class NamesController < ApplicationController
  def index
    @names = Name.all
  end

  def show
    @name = Name.find(params[:id])
  end

  def new
    @name = Name.new
  end

  def create
    @name = Name.new
    @name.cuisine = params[:cuisine]
    @name.servings = params[:servings]
    @name.prep_time = params[:prep_time]
    @name.instructions = params[:instructions]
    @name.meal_category = params[:meal_category]
    @name.creator_id = params[:creator_id]

    if @name.save
      redirect_to names_url, :notice => "Name created successfully."
    else
      render 'new'
    end
  end

  def edit
    @name = Name.find(params[:id])
  end

  def update
    @name = Name.find(params[:id])

    @name.cuisine = params[:cuisine]
    @name.servings = params[:servings]
    @name.prep_time = params[:prep_time]
    @name.instructions = params[:instructions]
    @name.meal_category = params[:meal_category]
    @name.creator_id = params[:creator_id]

    if @name.save
      redirect_to name_url(@name.id), :notice => "Name updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @name = Name.find(params[:id])

    @name.destroy

    redirect_to names_url, :notice => "Name deleted."
  end
end
