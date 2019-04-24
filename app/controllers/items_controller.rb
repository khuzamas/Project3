class ItemsController < ApplicationController

    def index
        # @items= Item.all
        @fridge = Fridge.find(params[:fridge_id])
        # @items= @fridge.items.find(params[:fridge_id])
    end

    def show
        @fridge = Fridge.find(params[:fridge_id])
        @item= Item.find(params[:id])
    end

    def new
        @fridge = Fridge.find(params[:fridge_id])
        @item = Item.new
        
    end

    def create
        @fridge = Fridge.find(params[:fridge_id])
        @new_option = Option.find(params[:item][:option_ids])
        @item= @fridge.items.create(item_params)
        @item.options << @new_option
        @item.save

        redirect_to fridge_items_path(@fridge)
    end

    def edit
        @fridge = Fridge.find(params[:fridge_id])
        @item= Item.find(params[:id])
    end

    def update
        @fridge = Fridge.find(params[:fridge_id])
        @item = Item.find(params[:id])
 
        if @item.update(item_params)
            redirect_to fridge_item_path(@fridge, @item)
        else
            render 'edit'
        end
    end

    def destroy
        fridge= Fridge.find(params[:fridge_id])
        @item = fridge.items.find(params[:id])
        @item.destroy
        redirect_to fridge_items_path
    end

    private
        def item_params
            params.require(:item).permit(:name, :exp_date, :stock, :category, :image, :fridge_id, :option_ids => [])
        end
end
