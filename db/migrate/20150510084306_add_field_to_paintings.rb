class AddFieldToPaintings < ActiveRecord::Migration
  def change
    add_column :paintings, :year, :string
    add_column :paintings, :width, :string
    add_column :paintings, :height, :string
    add_column :paintings, :packing_type, :string
    remove_column :paintings, :size, :decimal
  end
end
