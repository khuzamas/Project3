class FridgesController < ApplicationController
  
    def home
       @fridges= Fridge.all
        @fridge= Fridge.new
       
      end

    def index
        @fridges = Fridge.all
    end
  
    def new 
        @fridge= Fridge.new
    end

    def create
        @fridge= Fridge.create(fridge_params)
        @fridge.users << current_user
        @fridge.save

        redirect_to fridges_home_path
    end

   
    def show
        @fridge= Fridge.find(params[:id])
    end

    def edit
        @fridge= Fridge.find(params[:id])
    end

    def update
        @fridge = Fridge.find(params[:id])

        new_item = Item.find(params[:fridge][:item_ids])
        
        puts new_item 
        @fridge.items.push(new_item)
 
        if @fridge.update(fridge_params)
            redirect_to @fridge
        else
            render 'edit'
        end
    end

    def destroy
        @fridge = Fridge.find(params[:id])
        @fridge.destroy
      
        redirect_to fridges_home_path, notice: "Delete success"
      end


    private
        def fridge_params
            params.require(:fridge).permit(:name, :user_id, :info_id, :item_ids => [])
        end
end
