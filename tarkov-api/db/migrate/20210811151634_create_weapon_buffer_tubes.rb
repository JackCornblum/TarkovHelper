class CreateWeaponBufferTubes < ActiveRecord::Migration[6.1]
  def change
    create_table :weapon_buffer_tubes do |t|
      t.integer :weapon_id
      t.integer :buffer_tube_id

      t.timestamps
    end
  end
end
