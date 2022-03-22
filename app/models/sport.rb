class Sport < ApplicationRecord
  has_many :items, dependent: :destroy
end
