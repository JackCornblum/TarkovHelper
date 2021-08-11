class CreateWeaponPistolGrips < ActiveRecord::Migration[6.1]
  def change
    create_table :weapon_pistol_grips do |t|
      t.integer :weapon_id
      t.integer :pistol_grip_id

      t.timestamps
    end
  end
end
