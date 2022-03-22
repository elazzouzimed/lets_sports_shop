class AddUserReferenceToFeedbacks < ActiveRecord::Migration[6.1]
  def change
    add_column :feedbacks, :comentator_id , :integer
    add_foreign_key :feedbacks, :users, column: :comentator_id
  end
end
