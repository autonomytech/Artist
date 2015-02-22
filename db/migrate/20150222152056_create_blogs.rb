class CreateBlogs < ActiveRecord::Migration
  def change
    create_table :blogs do |t|
      t.string :title
      t.text :content
      t.attachment :image
      t.integer :like
      t.integer :dislike

      t.timestamps null: false
    end
  end
end
