class CreatePurchases < ActiveRecord::Migration[5.0]
  def change
    create_table :purchases do |t|
      t.date :transaction_date
      t.integer :amount

      t.timestamps
    end
  end
end
