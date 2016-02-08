class CreateTaskmemberships < ActiveRecord::Migration
  def change
    create_table :taskmemberships do |t|
      t.integer :user_id
      t.integer :taskmembership_id
      t.integer :task_id

      t.timestamps null: false
    end
  end
end
