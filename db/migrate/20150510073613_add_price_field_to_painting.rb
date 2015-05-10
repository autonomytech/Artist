class AddPriceFieldToPainting < ActiveRecord::Migration
  def change
    add_column :paintings, :price, :string
    add_column :paintings, :price_on_request, :boolean, default: false
  end
end
