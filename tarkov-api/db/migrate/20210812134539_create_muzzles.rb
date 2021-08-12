class CreateMuzzles < ActiveRecord::Migration[6.1]
  def change
    create_table :muzzles do |t|
      t.string :name
      t.integer :recoil
      t.integer :ergonomics
      t.integer :dealer_id
      t.integer :price
      t.string :image

      t.timestamps
    end
  end
end
