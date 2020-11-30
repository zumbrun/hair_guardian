class CreateAccounts < ActiveRecord::Migration[6.0]
  def change
    create_table :accounts do |t|
      t.text :last_name
      t.text :first_name
      t.text :street_address
      t.text :city
      t.text :state
      t.integer :zip_code
      t.text :payment_status
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
