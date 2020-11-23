class CreateCaps < ActiveRecord::Migration[6.0]
  def change
    create_table :caps do |t|
      t.string :serial_number
      t.float :circumference
      t.float :ear_ear_top
      t.float :ear_ear_base
      t.float :nose_nape
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
