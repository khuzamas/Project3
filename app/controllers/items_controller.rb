class ItemsController < ApplicationController

    def index
        @items= Item.all
    end

    def show
        @item= Item.find(params[:id])
    end

    def new
        @item= Item.new
    end

    def create
        @item= Item.create(item_params)
        redirect_to @item
    end

    private
        def item_params
            params.require(:item).permit(:name, :exp_date, :stock, :category, :image)
        end
end
