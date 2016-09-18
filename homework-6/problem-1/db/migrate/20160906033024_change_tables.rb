class ChangeTables < ActiveRecord::Migration[5.0]
  def change
    add_column :products, :price, :integer
    add_column :products, :purchase_id, :integer
    add_column :products, :user_id, :integer
    remove_column :purchases, :user_id, :string
  end
end
