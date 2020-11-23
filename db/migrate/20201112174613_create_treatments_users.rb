class CreateTreatmentsUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :treatments_users do |t|
      t.references :treatment, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
    end
  end
end
