class CreateInProgressTasks < ActiveRecord::Migration[6.1]
  def change
    create_table :in_progress_tasks do |t|
      t.integer :user_id
      t.integer :task_id

      t.timestamps
    end
  end
end
