class CreateMountForegrips < ActiveRecord::Migration[6.1]
  def change
    create_table :mount_foregrips do |t|
      t.integer :mount_id
      t.integer :foregrip_id

      t.timestamps
    end
  end
end
