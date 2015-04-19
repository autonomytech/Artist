class CreateBlogs < ActiveRecord::Migration
  def change
    create_table :blogs do |t|
      t.string :title
      t.text :content
      t.references :profile, index: true
      t.attachment :image
      t.integer :like, :default => 0
      t.integer :dislike,:default => 0

      t.timestamps null: false
    end
    add_foreign_key :blogs, :profiles
  end
end
