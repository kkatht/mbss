class ItemsController < ApplicationController

    def index
       @items = Item.all.order(created_at: :desc)
    end

    def new
       @item = Item.new
    end

    def create
      @item = Item.new(item_params)
      if @item.save
        redirect_to root_path
      else
        render :new, status: :unprocessable_entity
      end
    end

    def show
      @item = Item.find(params[:id])
    end

    def edit
      @item = Item.find(params[:id])
      if current_user.id != @item.user_id
        redirect_to root_path
      end
    end

    def update
      @item = Item.find(params[:id])
      if @item.update(item_params)
        redirect_to root_path(item_params)
      else
        render :edit, status: :unprocessable_entity
      end
    end


    def destroy
    end

    private

    def item_params
        params.require(:item).permit(:syohinmei, :syohincode, :suuryo, :comment, :image).merge(user_id: current_user.id)
    end
 
end