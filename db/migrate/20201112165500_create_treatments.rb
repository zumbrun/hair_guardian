class CreateTreatments < ActiveRecord::Migration[6.0]
  def change
    create_table :treatments do |t|
      t.text :regimen
      t.text :frequency

      t.timestamps
    end
  end
end
