class PagesController < ApplicationController
  def home
    @trending_football = Item.where(sport: Sport.first).order(:created_at).take(3)
    @trending_tennis = Item.where(sport: Sport.second).order(:created_at).take(3)
    @trending_golf = Item.where(sport: Sport.third).order(:created_at).take(3)
    @trending_basketball = Item.where(sport: Sport.fourth).order(:created_at).take(3)

    @categories = Sport.all

    @trending = Item.order(:created_at).take(9)
    @feedbacks = Feedback.take(3)
  end

  def about
  end

  def contact
  end
end
