class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.references :post, null: false #外部キー
      t.string :comment, null: false #コメント
      t.timestamps
    end

    add_foreign_key :comments, :posts
  end
end
