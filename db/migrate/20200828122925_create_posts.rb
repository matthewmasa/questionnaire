class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.string :user_name,null: false,comment:"投稿者名"
      t.string :title,null: false,comment:"投稿タイトル"
      t.text  :content,null: false,comment:"投稿内容"

      t.timestamps
    end
  end
end
