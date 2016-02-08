class AddSendingstatsToFriendships < ActiveRecord::Migration
  def change
    add_column :friendships, :sendingstats, :string
  end
end
