class PagesController < ApplicationController
  def home
    @trending = Item.order(:created_at).take(9)
  end

  def about
  end

  def contact
  end
end
