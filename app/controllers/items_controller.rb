class ItemsController < ApplicationController

    def index
        @items= Item.all
    end

    def show
        @item= Item.find(params[:id])
    end

    def new
        @item = Item.new
        @fridge = Fridge.find(params[:fridge_id])
    end

    # def create
    #     puts params
    #     @item= Item.create()
    #     new_option = Option.find(params[:item][:option])
    #     # @fridge.items.push(new_item)
    #     puts new_option
    #     # @item.save
    #     # new_item = Option.find(params[:option_ids])
    #     @item.name= new_option.name
    #     @item.category= new_option.category
    #     @item.image= new_option.image
    #     puts @item
    #     # @item.options.push(new_item)
    #     redirect_to @item
    # end

    def create
        fridge = Fridge.find(params[:fridge_id])
        item= fridge.items.create(item_params)
        redirect_to @fridge
    end

    private
        def item_params
            params.require(:item).permit(:name, :exp_date, :stock, :category, :image)
        end
end
