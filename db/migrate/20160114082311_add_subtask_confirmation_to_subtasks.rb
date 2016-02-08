class AddSubtaskConfirmationToSubtasks < ActiveRecord::Migration
  def change
    add_column :subtasks, :subtask_confirmation, :string
  end
end
