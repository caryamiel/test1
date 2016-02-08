class CreateJobcomments < ActiveRecord::Migration
  def change
    create_table :jobcomments do |t|
      t.integer :user_id
      t.integer :content

      t.timestamps null: false
    end
  end
end
