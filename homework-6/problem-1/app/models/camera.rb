class Camera < ApplicationRecord
  has_many :purchases
  has_many :users, through: cameras
end
