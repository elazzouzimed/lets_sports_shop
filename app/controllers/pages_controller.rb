class PagesController < ApplicationController
  def home
    @categories = Sport.all
    @trending = Item.order(:created_at).take(9)
    @feedbacks = Feedback.take(3)
  end

  def about
  end

  def contact
  end
end
