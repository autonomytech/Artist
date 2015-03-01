class AddPaintingCategoryIndexToPainting < ActiveRecord::Migration
  def change
    add_column :paintings, :painting_category_id, :integer
    add_index :paintings, :painting_category_id
  end
end
