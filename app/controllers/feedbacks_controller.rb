class FeedbacksController < ApplicationController
  def new
    @feedback = Feedback.new
  end

  def create
    @feedback = Feedback.new(feedback_params) # user_params?
    if @feedback.save
      redirect_to feedback_path(@feedback)
    else
      render "new"
    end
  end

  def show
    @feedback = Feedback.find(params[:id])
  end

  def destroy
    @feedback.destroy
  end

  private

  def feedback_params
    params.require(:feedback).permit(:user_id, :comment, :rating)
  end
end
