class User < ApplicationRecord
  validates :name, length: { minimum: 3 }, uniqueness: true
  validates :email, presence: true, length: { maximum: 40 }
  validates :password, presence: true, length: { maximum: 40 }
end
