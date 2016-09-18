class Changeproductablename < ActiveRecord::Migration[5.0]
  def change
    rename_table :products, :cameras
  end
end
