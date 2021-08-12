class CreateWeaponHandguards < ActiveRecord::Migration[6.1]
  def change
    create_table :weapon_handguards do |t|
      t.integer :weapon_id
      t.integer :handguard_id

      t.timestamps
    end
  end
end
