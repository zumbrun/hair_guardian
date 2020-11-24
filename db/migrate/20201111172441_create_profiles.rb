class CreateProfiles < ActiveRecord::Migration[6.0]
  def change
    create_table :profiles do |t|
      t.integer :age
      t.text :gender
      t.text :race
      t.text :ethnicity
      t.text :clinic_name
      t.text :clinic_address
      t.text :dx
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
