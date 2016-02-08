class AddTaskPrerequisiteToTasks < ActiveRecord::Migration
  def change
    add_column :tasks, :task_prerequisite, :string
  end
end
