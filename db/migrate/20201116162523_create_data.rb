class CreateData < ActiveRecord::Migration[6.0]
  def change
    create_table :data do |t|
      t.text :phase
      t.float :temp1
      t.float :temp2
      t.float :temp3
      t.float :flow_rate
      t.float :rail_power
      t.float :battery_power
      t.datetime :tx_time
      t.references :cap, null: false, foreign_key: true
      t.references :device, null: false, foreign_key: true

      t.timestamps
    end
  end
end
