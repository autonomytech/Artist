class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :name
      t.string :email
      t.text :comment
      t.integer :like, :default => 0
      t.integer :dislike,:default => 0
      t.references :blog, index: true

      t.timestamps null: false
    end
    add_foreign_key :comments, :blogs
  end
end
