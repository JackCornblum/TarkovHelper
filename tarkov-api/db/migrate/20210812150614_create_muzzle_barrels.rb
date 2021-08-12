class CreateMuzzleBarrels < ActiveRecord::Migration[6.1]
  def change
    create_table :muzzle_barrels do |t|
      t.integer :muzzle_id
      t.integer :barrel_id

      t.timestamps
    end
  end
end
