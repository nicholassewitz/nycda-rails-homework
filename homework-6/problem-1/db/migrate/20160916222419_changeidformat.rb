class Changeidformat < ActiveRecord::Migration[5.0]
  def change
    change_table :purchases do |t|
      t.change :product_id, :integer
      t.change :user_id, :integer
    end
  end
end
