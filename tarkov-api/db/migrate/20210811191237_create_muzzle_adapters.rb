class CreateMuzzleAdapters < ActiveRecord::Migration[6.1]
  def change
    create_table :muzzle_adapters do |t|
      t.string :name
      t.string :image
      t.integer :dealer_id
      t.integer :price
      t.integer :recoil
      t.integer :ergonomics

      t.timestamps
    end
  end
end
