class CreateAchievements < ActiveRecord::Migration
  def change
    create_table :achievements do |t|
      t.string :name
      t.date :date
      t.text :details
      t.references :profile, index: true

      t.timestamps null: false
    end
    add_foreign_key :achievements, :profiles
  end
end
