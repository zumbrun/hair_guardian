class CreateTreatments < ActiveRecord::Migration[6.0]
  def change
    create_table :treatments do |t|
      t.string :regimen
      t.string :frequency

      t.timestamps
    end
  end
end
