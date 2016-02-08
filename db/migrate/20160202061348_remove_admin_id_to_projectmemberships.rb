class RemoveAdminIdToProjectmemberships < ActiveRecord::Migration
  def change
    remove_column :projectmemberships, :admin_id, :integer
  end
end
