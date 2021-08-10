class CreateWeaponForegrips < ActiveRecord::Migration[6.1]
  def change
    create_table :weapon_foregrips do |t|
      t.integer :weapon_id
      t.integer :foregrip_id

      t.timestamps
    end
  end
end
