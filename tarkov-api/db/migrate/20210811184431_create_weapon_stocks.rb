class CreateWeaponStocks < ActiveRecord::Migration[6.1]
  def change
    create_table :weapon_stocks do |t|
      t.integer :weapon_id
      t.integer :stock_id

      t.timestamps
    end
  end
end
