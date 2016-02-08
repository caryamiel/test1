class RemoveProjectConfirmationToProjects < ActiveRecord::Migration
  def change
    remove_column :projects, :project_confirmation, :boolean
  end
end
