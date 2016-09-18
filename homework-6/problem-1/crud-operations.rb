u = User.new(:name => 'Greg')
u.save
User.create(:name => 'Nicholas')
User.count
User.first
User.select(:name)
Purchase.create :amount => 3000, :product_id => Product.first, :user_id => User.first
Purchase.first.delete
Product.exists?
Product.exists?(name: 'Coke')
