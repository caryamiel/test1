class RemoveContentToJobcomments < ActiveRecord::Migration
  def change
    remove_column :jobcomments, :content, :integer
  end
end
