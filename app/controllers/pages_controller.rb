class PagesController < ApplicationController
  def home
    @categories = Sport.all
  end

  def about
  end

  def contact
  end
end
