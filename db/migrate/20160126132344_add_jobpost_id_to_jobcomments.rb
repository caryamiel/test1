class AddJobpostIdToJobcomments < ActiveRecord::Migration
  def change
    add_column :jobcomments, :jobpost_id, :integer
  end
end
