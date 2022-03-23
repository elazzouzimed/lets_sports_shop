class CreateItems < ActiveRecord::Migration[6.1]
  def change
    create_table :items do |t|
      t.string :name
      t.string :description
      t.float :price
      t.integer :seller_id
      t.references :sport, null: false, foreign_key: true

      t.timestamps
    end
  end
end
