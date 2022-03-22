class ItemsController < ApplicationController
  def new
    @item = Item.new
  end

  def create
    @item = Item.new
    @item.save
  end

  def show
  end
end
