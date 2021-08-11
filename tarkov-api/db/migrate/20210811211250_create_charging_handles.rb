class CreateChargingHandles < ActiveRecord::Migration[6.1]
  def change
    create_table :charging_handles do |t|
      t.string :name
      t.string :image
      t.integer :ergonomics
      t.integer :dealer_id

      t.timestamps
    end
  end
end
