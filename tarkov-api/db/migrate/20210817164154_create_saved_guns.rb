class CreateSavedGuns < ActiveRecord::Migration[6.1]
  def change
    create_table :saved_guns do |t|
      t.integer :user_id
      t.integer :weapon_id
      t.integer :barrel_id
      t.integer :buffer_tube_id
      t.integer :foregrip_id
      t.integer :gasblock_id
      t.integer :handguard_id
      t.integer :mount_id
      t.integer :muzzle_adapter_id
      t.integer :muzzle_id
      t.integer :pistol_grip_id
      t.integer :receiver_id
      t.integer :stock_id

      t.timestamps
    end
  end
end
