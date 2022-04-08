class SportsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:show]

  def show
    @sport = Sport.find(params[:id])
    @items = @sport.items
  end
end
