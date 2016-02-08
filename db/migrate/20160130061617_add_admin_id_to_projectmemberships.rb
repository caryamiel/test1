class AddAdminIdToProjectmemberships < ActiveRecord::Migration
  def change
    add_column :projectmemberships, :admin_id, :integer
  end
end
