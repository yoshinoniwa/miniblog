class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.string :comment, null: false #コメント
      t.integer :postid
      t.timestamps
    end
  end
end
