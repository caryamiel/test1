class RemoveSubtaskIdToComments < ActiveRecord::Migration
  def change
    remove_column :comments, :subtask_id, :integer
  end
end
