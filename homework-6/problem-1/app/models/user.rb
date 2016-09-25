class User < ApplicationRecord
  has_many :purchases
  has_many :cameras, through: :purchases
end
