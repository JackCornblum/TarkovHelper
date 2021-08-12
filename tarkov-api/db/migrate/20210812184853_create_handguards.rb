class CreateHandguards < ActiveRecord::Migration[6.1]
  def change
    create_table :handguards do |t|
      t.string :name
      t.string :image
      t.integer :recoil
      t.integer :ergonomics
      t.integer :dealer_id
      t.integer :price

      t.timestamps
    end
  end
end
