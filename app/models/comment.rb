class Comment < ApplicationRecord

  belongs_to :post,  optional: true, class_name: "Post", foreign_key: "post_id"

  #バリデーション　postの中身が空っぽじゃなければDBに登録
  validates :comment, presence: true

end
