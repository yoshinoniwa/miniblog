class CreateVotes < ActiveRecord::Migration[5.1]
  def change
    create_table :votes do |t|
      t.references :post, null: false #外部キー
      t.references :user, null: false #外部キー
      t.timestamps null: false
    end
    add_index :vetes, :post_id
    add_index :vetes, :user_id
  end
end
