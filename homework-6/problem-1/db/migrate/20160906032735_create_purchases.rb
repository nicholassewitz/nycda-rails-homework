class CreatePurchases < ActiveRecord::Migration[5.0]
  def change
    create_table :purchases do |t|
      t.string :transaction_date
      t.string :date
      t.string :amount
      t.string :integer
      t.string :user_id
      t.string :integer

      t.timestamps
    end
  end
end
