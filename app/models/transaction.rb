class Transaction < ApplicationRecord
  belongs_to :user, foreign_key: :buyer_id
  belongs_to :item
end
