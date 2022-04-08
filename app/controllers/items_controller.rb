class ItemsController < ApplicationController
  def index
  end


  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    @item.user = current_user
    if @item.save
      redirect_to sport_item_path(item_params[:sport_id],@item)
    else
      render "new"
    end
  end

  def show
    @item = Item.find(params[:id])
  end

  def destroy
    @item.destroy
  end

  private

  def item_params
    params.require(:item).permit(:name, :description, :price, :seller_id, :sport_id)
  end
end
