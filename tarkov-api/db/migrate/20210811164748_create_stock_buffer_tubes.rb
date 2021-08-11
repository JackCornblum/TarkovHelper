class CreateStockBufferTubes < ActiveRecord::Migration[6.1]
  def change
    create_table :stock_buffer_tubes do |t|
      t.integer :buffer_tube_id
      t.integer :stock_id

      t.timestamps
    end
  end
end
