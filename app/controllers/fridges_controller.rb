class FridgesController < ApplicationController
  
    def index
        @fridges = Fridge.all
    end
  
    def new 
        @fridge= Fridge.new
    end

    def create
        fridge= Fridge.create(fridge_params)
        redirect_to fridges_path
    end

  

    def show
        @fridge= Fridge.find(params[:id])
    end

    private
        def fridge_params
            params.require(:fridge).permit(:name)
        end
end
