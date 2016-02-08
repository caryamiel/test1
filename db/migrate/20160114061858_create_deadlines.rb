class CreateDeadlines < ActiveRecord::Migration
  def change
    create_table :deadlines do |t|
      t.date :dueDate

      t.timestamps null: false
    end
  end
end
