class CreateHandguardForegrips < ActiveRecord::Migration[6.1]
  def change
    create_table :handguard_foregrips do |t|
      t.integer :handguard_id
      t.integer :foregrip_id

      t.timestamps
    end
  end
end
