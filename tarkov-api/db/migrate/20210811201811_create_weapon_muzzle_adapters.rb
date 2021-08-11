class CreateWeaponMuzzleAdapters < ActiveRecord::Migration[6.1]
  def change
    create_table :weapon_muzzle_adapters do |t|
      t.integer :weapon_id
      t.integer :muzzle_adapter_id

      t.timestamps
    end
  end
end
