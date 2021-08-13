class CreateMountHandguards < ActiveRecord::Migration[6.1]
  def change
    create_table :mount_handguards do |t|
      t.integer :mount_id
      t.integer :handguard_id

      t.timestamps
    end
  end
end
