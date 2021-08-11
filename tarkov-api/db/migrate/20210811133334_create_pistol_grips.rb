class CreatePistolGrips < ActiveRecord::Migration[6.1]
  def change
    create_table :pistol_grips do |t|
      t.string :name
      t.integer :dealer_id
      t.integer :ergonomics
      t.integer :price
      t.string :image

      t.timestamps
    end
  end
end
