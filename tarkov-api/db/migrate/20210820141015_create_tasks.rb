class CreateTasks < ActiveRecord::Migration[6.1]
  def change
    create_table :tasks do |t|
      t.integer :dealer_id
      t.string :name
      t.string :description
      t.string :rewards

      t.timestamps
    end
  end
end
