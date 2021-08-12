class CreateWeaponReceivers < ActiveRecord::Migration[6.1]
  def change
    create_table :weapon_receivers do |t|
      t.integer :weapon_id
      t.integer :receiver_id

      t.timestamps
    end
  end
end
