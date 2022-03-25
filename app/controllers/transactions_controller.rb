class TransactionsController < ApplicationController
  def index
    @transactions = Transaction.all
  end

  def new
    @transaction = Transaction.new
  end

  def create
    @transaction = Transaction.new(transaction_params)
    if @transaction.save
      redirect_to transaction_path(@transaction)
    else
      render "new"
    end
  end

  def show
    @transaction = Transaction.find(params[:id])
  end

  def accept_offer
  end

  def delivered?
    if default value: false
    else
      true
    end
  end

  def destroy
    @transaction.destroy
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
