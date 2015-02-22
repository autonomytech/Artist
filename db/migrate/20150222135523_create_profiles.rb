class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :first_name
      t.string :middle_name
      t.string :last_name
      t.string :email
      t.string :mobile_no
      t.text :address
      t.attachment :image

      t.timestamps null: false
    end
  end
end
