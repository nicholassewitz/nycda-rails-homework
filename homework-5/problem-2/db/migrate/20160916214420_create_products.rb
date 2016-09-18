class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :product_name
      t.integer :price
      t.integer :purchase_id
      t.integer :user_id

      t.timestamps
    end
  end
end
