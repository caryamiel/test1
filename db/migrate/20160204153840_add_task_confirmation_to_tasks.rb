class AddTaskConfirmationToTasks < ActiveRecord::Migration
  def change
    add_column :tasks, :task_confirmation, :string
  end
end
