class AddAddressReferencesToProfile < ActiveRecord::Migration
  def change
    remove_column :profiles, :address, :text
    add_column :addresses, :profile_id, :integer
    add_index :addresses, :profile_id
    add_foreign_key :addresses, :profiles
  end
end
