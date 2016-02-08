class CreateTalkresps < ActiveRecord::Migration
  def change
    create_table :talkresps do |t|
      t.integer :user_id
      t.string :projtalk_id
      t.string :talkcontent

      t.timestamps null: false
    end
  end
end
