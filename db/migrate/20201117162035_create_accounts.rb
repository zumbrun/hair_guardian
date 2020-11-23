class CreateAccounts < ActiveRecord::Migration[6.0]
  def change
    create_table :accounts do |t|
      t.string :last_name
      t.string :first_name
      t.string :street_address
      t.string :zip_code
      t.string :city
      t.string :state
      t.string :payment_status
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
