class CreateStocks < ActiveRecord::Migration[6.1]
  def change
    create_table :stocks do |t|
      t.string :name
      t.string :image
      t.integer :dealer_id
      t.integer :recoil
      t.integer :ergonomics
      t.integer :price

      t.timestamps
    end
  end
end
