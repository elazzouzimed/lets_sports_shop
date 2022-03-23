class AddUserReferenceToFeedbacks < ActiveRecord::Migration[6.1]
  def change
    add_column :feedbacks, :comentator_id, :integer
    add_foreign_key :feedbacks, :users, column: :comentator_id
    add_foreign_key :items, :users, column: :seller_id
    add_foreign_key :transactions, :users, column: :buyer_id
  end
end
