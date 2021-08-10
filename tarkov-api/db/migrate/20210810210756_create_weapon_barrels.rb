class CreateWeaponBarrels < ActiveRecord::Migration[6.1]
  def change
    create_table :weapon_barrels do |t|
      t.integer :weapon_id
      t.integer :barrel_id

      t.timestamps
    end
  end
end
