class AddFiledsToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :username, :string
    add_column :users, :rating, :integer
    add_column :users, :phone_number, :string


  end
end
