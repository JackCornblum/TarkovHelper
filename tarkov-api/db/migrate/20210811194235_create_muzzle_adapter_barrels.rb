class CreateMuzzleAdapterBarrels < ActiveRecord::Migration[6.1]
  def change
    create_table :muzzle_adapter_barrels do |t|
      t.integer :muzzle_adapter_id
      t.integer :barrel_id

      t.timestamps
    end
  end
end
