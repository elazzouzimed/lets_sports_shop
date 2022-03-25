class PagesController < ApplicationController
  def home
    @latest_football = Item.where(sport: Sport.first).order(:created_at).take(3)
    @latest_tennis = Item.where(sport: Sport.second).order(:created_at).take(3)
    @latest_golf = Item.where(sport: Sport.third).order(:created_at).take(3)
    @latest_basketball = Item.where(sport: Sport.fourth).order(:created_at).take(3)

    @sports = Sport.all

    @latest = Item.order(:created_at).take(9)
    @feedbacks = Feedback.take(3)
  end

  def about
  end

  def contact
  end
end
