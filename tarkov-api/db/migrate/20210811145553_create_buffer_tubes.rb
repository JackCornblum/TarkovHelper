class CreateBufferTubes < ActiveRecord::Migration[6.1]
  def change
    create_table :buffer_tubes do |t|
      t.string :name
      t.integer :ergonomics
      t.integer :recoil
      t.integer :dealer_id
      t.integer :price
      t.string :image

      t.timestamps
    end
  end
end
