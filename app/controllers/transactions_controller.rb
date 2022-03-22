class TransactionsController < ApplicationController
  def new
  end

  def create
  end

  def show
  end

  def accept_offer
  end

  def delivered?
  end

  private

  def set_transaction
    @transaction = Transaction.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:username, :rating, :email, :phone_number)
  end

  def item_params
    params.require(:item).permit(:name, :description, :price)
  end
end
