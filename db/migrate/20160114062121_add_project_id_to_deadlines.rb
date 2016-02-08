class AddProjectIdToDeadlines < ActiveRecord::Migration
  def change
    add_column :deadlines, :project_id, :integer
  end
end
