class Post < ApplicationRecord
  #バリデーション　postの中身が空っぽじゃなければDBに登録
  validates :post, presence: true

  has_many :comments, dependent: :destroy
  # has_many :comments, dependent: :destroy; #コメントと関連付け

end
