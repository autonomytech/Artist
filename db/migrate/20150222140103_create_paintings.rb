class CreatePaintings < ActiveRecord::Migration
  def change
    create_table :paintings do |t|
      t.string :title
      t.references :profile, index: true
      t.string :ref_no
      t.decimal :size
      t.string :style
      t.text :details
      t.string :medium
      t.string :status
      t.attachment :image
      t.references :painting_category, index: true

      t.timestamps null: false
    end
    add_foreign_key :paintings, :profiles
    add_foreign_key :paintings, :painting_categories
  end
end
