class CreatePaintingCategories < ActiveRecord::Migration
  def change
    create_table :painting_categories do |t|
      t.string :name
      t.string :code

      t.timestamps null: false
    end
  end
end
