class CreateDrugsTreatments < ActiveRecord::Migration[6.0]
  def change
    create_table :drugs_treatments do |t|
      t.references :drug, null: false, foreign_key: true
      t.references :treatment, null: false, foreign_key: true
    end
  end
end
