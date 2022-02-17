class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts, id: :uuid do |t|
      t.uuid :user_id
      t.string :content

      t.timestamps
    end
  end
end
