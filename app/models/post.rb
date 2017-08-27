class Post < ApplicationRecord
  #バリデーション　postの中身が空っぽじゃなければDBに登録
  validates :post, presence: true
end
