class User < ApplicationRecord
  has_many :questions
  has_many :answers
  has_many :comments

  validates :email, :username, uniqueness: true
  validates :username, :email, :password_hash, presence: true
end
