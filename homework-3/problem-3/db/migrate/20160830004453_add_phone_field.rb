class AddPhoneField < ActiveRecord::Migration
  def change
    change_table :users do |t|
      t.remove :age
      t.string :date_of_birth
    end
  end
end
