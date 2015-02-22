class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :name
      t.string :email
      t.text :comment
      t.integer :like
      t.integer :dislike

      t.timestamps null: false
    end
  end
end
