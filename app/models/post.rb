class Post < ApplicationRecord
  #バリデーション　postの中身が空っぽじゃなければDBに登録
  validates :post, presence: true

  # has_many :comments, dependent: :destroy; #コメントと関連付け

  has_many :votes, dependent: :destroy
  has_many :voters, through: :votes, source: :user

end
