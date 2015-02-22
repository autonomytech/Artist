class CreateClientHistories < ActiveRecord::Migration
  def change
    create_table :client_histories do |t|
      t.string :name
      t.string :email
      t.string :mobile_no
      t.string :payment_status
      t.references :painting, index: true

      t.timestamps null: false
    end
    add_foreign_key :client_histories, :paintings
  end
end
