class CreateQualifications < ActiveRecord::Migration
  def change
    create_table :qualifications do |t|
      t.string :qualification
      t.string :college_name
      t.string :university
      t.decimal :year
      t.references :profile, index: true

      t.timestamps null: false
    end
    add_foreign_key :qualifications, :profiles
  end
end
