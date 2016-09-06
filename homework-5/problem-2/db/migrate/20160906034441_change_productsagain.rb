class ChangeProductsagain < ActiveRecord::Migration[5.0]
  def change
    remove_column :products, :string, :string
    remove_column :products, :purchase_id, :integer
    remove_column :purchases, :integer, :string
    change_column :purchases, :user_id, :integer
    add_column :purchases, :purchase_id, :integer
  end
end
