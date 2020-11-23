class CreateProfiles < ActiveRecord::Migration[6.0]
  def change
    create_table :profiles do |t|
      t.integer :age
      t.string :gender
      t.string :race
      t.string :ethnicity
      t.string :clinic_name
      t.string :clinic_address
      t.text :dx
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
