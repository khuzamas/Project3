class ListsController < ApplicationController
  def index
    @lists = List.all
  end

  def new
    @list = List.new
  end

  def create
    puts params
    @list = List.create(list_params)
    redirect_to @list
  end
  def destroy 
  end 
  
  def edit
  end
  private
    
  def recipe_params
    params.require(:list).permit(:tiltle, :description )
  end
end
