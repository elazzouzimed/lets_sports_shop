class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def new
    @user = current_user if user_signed_in?
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    if @user.save
      redirect_to user_path(@user)
    else
      render "new"
    end
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to user_path(@user)
    else
      render "new"
    end
  end

  def show
    @user = User.find(params[:id])
  end

  private

  def user_params
    params.require(:user).permit(:username, :rating, :email, :phone_number)
  end
end
