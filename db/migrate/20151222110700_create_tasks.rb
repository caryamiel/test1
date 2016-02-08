class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :name
      t.text :descriptions
      t.date :startDate
      t.date :dueDate
      t.string :priority_number

      t.timestamps null: false
    end
  end
end
