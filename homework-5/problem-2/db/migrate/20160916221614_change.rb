class Change < ActiveRecord::Migration[5.0]
  def change
    change_table :products do |t|
      t.remove :user_id, :purchase_id
    end

    change_table :purchases do |t|
      t.string :product_id, :user_id
    end
  end

end
