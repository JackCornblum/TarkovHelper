class CreateMounts < ActiveRecord::Migration[6.1]
  def change
    create_table :mounts do |t|
      t.string :name
      t.string :image
      t.integer :ergonomics
      t.integer :dealer_id
      t.integer :price

      t.timestamps
    end
  end
end
