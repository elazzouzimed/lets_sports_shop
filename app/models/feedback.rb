class Feedback < ApplicationRecord
  belongs_to :user
  belongs_to :user, foreign_key: :comentator_id
end
