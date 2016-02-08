class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.text :descriptions
      t.date :startDate
      t.date :dueDate

      t.timestamps null: false
    end
  end
end
