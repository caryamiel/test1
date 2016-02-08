class AddTaskPriorityToTasks < ActiveRecord::Migration
  def change
    add_column :tasks, :task_priority, :string
  end
end
