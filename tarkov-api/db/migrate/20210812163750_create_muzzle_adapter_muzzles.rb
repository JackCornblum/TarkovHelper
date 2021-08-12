class CreateMuzzleAdapterMuzzles < ActiveRecord::Migration[6.1]
  def change
    create_table :muzzle_adapter_muzzles do |t|
      t.integer :muzzle_id
      t.integer :muzzle_adapter_id

      t.timestamps
    end
  end
end
