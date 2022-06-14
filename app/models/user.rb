class User < ApplicationRecord
  has_many :posts
  has_many :comments

  validates :name, length: { minimum: 3 }, uniqueness: true
  validates :email, presence: true, length: { maximum: 40 }
  validates :password, presence: true, length: { maximum: 40 }
end
