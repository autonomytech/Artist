class AddIsReadedColumnToComment < ActiveRecord::Migration
  def change
    add_column :comments, :is_readed, :boolean, default: false
  end
end
