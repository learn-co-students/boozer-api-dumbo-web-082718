class User < ApplicationRecord
  has_many :favorite_drinks
  has_many :cocktails, through: :favorite_drinks
  has_secure_password
end
