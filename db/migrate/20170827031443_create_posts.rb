class CreatePosts < ActiveRecord::Migration[5.1]

  def change
    create_table :posts do |t|
      t.string :post, null: false #投稿内容　空白の値はダメよ
      t.integer :like, default: 0 #いいね
      t.timestamps #投稿された時間
    end
  end
end
