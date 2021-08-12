class CreateWeaponMuzzles < ActiveRecord::Migration[6.1]
  def change
    create_table :weapon_muzzles do |t|
      t.integer :weapon_id
      t.integer :muzzle_id

      t.timestamps
    end
  end
end
