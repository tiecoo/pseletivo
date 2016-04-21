class AlterClassroomCourseid < ActiveRecord::Migration
  def change
   rename_column :classrooms, :courses_id, :course_id
   rename_column :classrooms, :students_id, :student_id
  end
end
