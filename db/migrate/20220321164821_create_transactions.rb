class CreateTransactions < ActiveRecord::Migration[6.1]
  def change
    create_table :transactions do |t|
      t.integer :buyer_id
      t.string :status
      t.references :item, null: false, foreign_key: true
      t.float :price_offer

      t.timestamps
    end
  end
end
