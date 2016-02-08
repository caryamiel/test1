class AddTmemberIdToTaskmemberships < ActiveRecord::Migration
  def change
    add_column :taskmemberships, :tmember_id, :integer
  end
end
