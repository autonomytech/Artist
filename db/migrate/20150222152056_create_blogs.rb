class CreateBlogs < ActiveRecord::Migration
  def change
    create_table :blogs do |t|
      t.string :title
      t.text :content
      t.attachment :image
       t.integer :like, :default => 0
      t.integer :dislike,:default => 0

      t.timestamps null: false
    end
  end
end
