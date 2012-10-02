class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.integer :user_id
      t.integer :theme_id
      t.string :title
      t.string :description
      t.string :keywords
      t.text :text

      t.timestamps
    end
  end
end
