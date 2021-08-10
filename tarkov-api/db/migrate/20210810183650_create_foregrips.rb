class CreateForegrips < ActiveRecord::Migration[6.1]
  def change
    create_table :foregrips do |t|
      t.string :name
      t.integer :ergonomics
      t.integer :recoil
      t.integer :price
      t.integer :dealer_id
      t.string :image

      t.timestamps
    end
  end
end
