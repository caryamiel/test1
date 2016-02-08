class RemoveProjectJoinedToProjectmemberships < ActiveRecord::Migration
  def change
    remove_column :projectmemberships, :project_joined, :integer
  end
end
