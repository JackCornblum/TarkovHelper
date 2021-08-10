class CreateWeapons < ActiveRecord::Migration[6.1]
  def change
    create_table :weapons do |t|
      t.string :name
      t.string :caliber
      t.string :image
      t.string :weapon_type

      t.timestamps
    end
  end
end
