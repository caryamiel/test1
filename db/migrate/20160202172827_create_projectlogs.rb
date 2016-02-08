class CreateProjectlogs < ActiveRecord::Migration
  def change
    create_table :projectlogs do |t|
      t.integer :user_id
      t.string :action
      t.string :parameter
      t.integer :project_id

      t.timestamps null: false
    end
  end
end
