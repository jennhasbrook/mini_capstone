class User < ApplicationRecord
  has_many :orders
  has_many :carted_products
  has_many :products, through: :carted_products
  
  has_secure_password
validates :name, presence: true
validates :email, presence: true, uniqueness: true
end