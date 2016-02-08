class CreateProjtalks < ActiveRecord::Migration
  def change
    create_table :projtalks do |t|
      t.integer :user_id
      t.integer :project_id
      t.string :name

      t.timestamps null: false
    end
  end
end
