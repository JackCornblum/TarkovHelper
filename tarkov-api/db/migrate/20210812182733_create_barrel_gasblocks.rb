class CreateBarrelGasblocks < ActiveRecord::Migration[6.1]
  def change
    create_table :barrel_gasblocks do |t|
      t.integer :barrel_id
      t.integer :gasblock_id

      t.timestamps
    end
  end
end
