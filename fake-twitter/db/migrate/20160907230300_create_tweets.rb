class CreateTweets < ActiveRecord::Migration
  def change
    create_table :tweets do |t|
      t.text(:body)
      t.string(:title, :location)
      t.timestamps null: false
    end
  end
end
