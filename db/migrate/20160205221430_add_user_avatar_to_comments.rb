class AddUserAvatarToComments < ActiveRecord::Migration
  def change
    add_column :comments, :user_avatar, :string
  end
end
