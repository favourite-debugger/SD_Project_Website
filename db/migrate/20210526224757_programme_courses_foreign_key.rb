class ProgrammeCoursesForeignKey < ActiveRecord::Migration[6.1]
  def change
    add_reference :programme_courses, :programmes, index: true
    rename_column :programme_courses, :programmes_id, :programme_id
    add_foreign_key :programme_courses, :programmes
    add_reference :programme_courses, :courses, index: true
    rename_column :programme_courses, :courses_id, :course_id
    add_foreign_key :programme_courses, :courses
  end
end
