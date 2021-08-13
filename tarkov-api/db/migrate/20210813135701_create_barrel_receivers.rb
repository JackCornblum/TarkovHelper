class CreateBarrelReceivers < ActiveRecord::Migration[6.1]
  def change
    create_table :barrel_receivers do |t|
      t.integer :barrel_id
      t.integer :receiver_id

      t.timestamps
    end
  end
end
