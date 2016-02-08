class CreateJobposts < ActiveRecord::Migration
  def change
    create_table :jobposts do |t|
      t.string :name
      t.integer :user_id
      t.string :topic

      t.timestamps null: false
    end
  end
end
