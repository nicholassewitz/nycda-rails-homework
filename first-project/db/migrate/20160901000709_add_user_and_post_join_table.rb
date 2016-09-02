class AddUserAndPostJoinTable < ActiveRecord::Migration
  def change
    create_join_table(:posts, :users)
  end
end
