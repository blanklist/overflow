class Answer < ApplicationRecord
  has_many :votes, as: :votable
  belongs_to :user
  belongs_to :question
  has_many :comments, as: :commentable

  validates_presence_of :body
end
