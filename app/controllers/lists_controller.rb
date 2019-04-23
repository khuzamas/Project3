class ListsController < ApplicationController
  def index
    @lists = List.all
    @user = User.find(current_user.id)
  end

  def show
    @list =List.find(params[:id])
  end

  def new
    @list = List.new
    @user = current_user
  end

  def create
  #   @list.user_id = current_user.id
  #   @list.save
  #   redirect_to @list
  #  end
    # @list = current_user.lists.build(list_params)
    user= current_user
    @list= List.create(list_params)
    user.lists << @list
    @list.save
    redirect_to url:"/lists"  

  end
  
  def edit
    @list = List.find(params[:id])
  end

  def update
    list = List.find(params[:id])
     list.update(list_params)
     redirect_to lists_path
end

  def destroy 
    @list = List.find(params[:id])
    @list.destroy
    redirect_to lists_path
  end 
  
  
  private
    
  def list_params
    params.require(:list).permit(:tiltle, :description, :Completed, :user_id)
  end

  def find_item
    @list = List.find(params[:id])
  end
end