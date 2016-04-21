class CreateClassrooms < ActiveRecord::Migration
  def change
    create_table :classrooms do |t|
      t.integer :students_id, :null => false
      t.integer :courses_id, :null => false
      t.datetime :entry_at

      t.timestamps null: false
    end
  end
end
