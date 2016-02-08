class AddProjectColorToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :project_color, :string
  end
end
