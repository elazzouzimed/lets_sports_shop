class SportsController < ApplicationController
  def show
    @sport = Sport.find(params[:id])
    @items = @sport.items
  end
end
