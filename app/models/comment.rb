class Comment < ApplicationRecord
  has_many :votes, as: :votable
  belongs_to :user
end
