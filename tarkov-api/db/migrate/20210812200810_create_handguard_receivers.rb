class CreateHandguardReceivers < ActiveRecord::Migration[6.1]
  def change
    create_table :handguard_receivers do |t|
      t.integer :handguard_id
      t.integer :receiver_id

      t.timestamps
    end
  end
end
