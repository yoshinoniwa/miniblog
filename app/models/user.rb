class User < ApplicationRecord

  has_many :votes, dependent: :destroy
  has_many :voted_posts, through: :votes, source: :post
end
