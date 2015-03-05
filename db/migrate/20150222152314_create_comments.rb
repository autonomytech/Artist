class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :name
      t.string :email
      t.text :comment
      t.integer :like, :default => 0
      t.integer :dislike,:default => 0

      t.timestamps null: false
    end
  end
end
