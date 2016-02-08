class AddContentToJobcomments < ActiveRecord::Migration
  def change
    add_column :jobcomments, :content, :string
  end
end
