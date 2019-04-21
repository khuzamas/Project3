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
        redirect_to fridges_home_path
    end
   
    def show
        @fridge= Fridge.find(params[:id])
        @fridges = Fridge.all
    end

    def destroy
        @fridge = Fridge.find(params[:id])
        @fridge.destroy
      
        redirect_to fridges_home_path, notice: "Delete success"
      end

    private
        def fridge_params
            params.require(:fridge).permit(:name)
        end
end
