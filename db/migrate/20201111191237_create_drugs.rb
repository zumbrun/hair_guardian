class CreateDrugs < ActiveRecord::Migration[6.0]
  def change
    create_table :drugs do |t|
      t.text :generic_name
      t.text :brand_name
      t.text :dosage

      t.timestamps
    end
  end
end
