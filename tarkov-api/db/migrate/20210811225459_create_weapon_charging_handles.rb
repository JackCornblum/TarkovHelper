class CreateWeaponChargingHandles < ActiveRecord::Migration[6.1]
  def change
    create_table :weapon_charging_handles do |t|
      t.integer :weapon_id
      t.integer :charging_handle_id

      t.timestamps
    end
  end
end
