class User < ApplicationRecord
  has_many :feedbacks
  has_many :transactions
  has_many :items
  has_many :sports, through: :items
  has_many :buyer_items, through: :transactions, source: :item
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

end
