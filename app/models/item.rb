class Item < ApplicationRecord
  belongs_to :sport
  belongs_to :user, foreign_key: :seller_id
  has_one_attached :photo
end
