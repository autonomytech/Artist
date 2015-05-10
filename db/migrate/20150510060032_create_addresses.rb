class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.string :street
      t.string :city
      t.string :state
      t.string :pincode
      t.string :country
      t.references :client_history, index: true

      t.timestamps null: false
    end
    add_foreign_key :addresses, :client_histories
  end
end
