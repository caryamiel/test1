class AddProjectConfirmToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :project_confirm, :string
  end
end
