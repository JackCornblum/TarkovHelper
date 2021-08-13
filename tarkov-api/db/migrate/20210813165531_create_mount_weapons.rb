class CreateMountWeapons < ActiveRecord::Migration[6.1]
  def change
    create_table :mount_weapons do |t|
      t.integer :weapon_id
      t.integer :mount_id

      t.timestamps
    end
  end
end
