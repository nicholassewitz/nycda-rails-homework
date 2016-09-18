class ChangeProducts < ActiveRecord::Migration[5.0]
  def change
    remove_column :products, :price, :integer
    remove_column :products, :purchase_id, :integer
    remove_column :products, :user_id, :integer
    add_column :purchases, :user_id, :string
    add_column :products, :price, :integer
    add_column :products, :purchase_id, :integer    
  end
end
