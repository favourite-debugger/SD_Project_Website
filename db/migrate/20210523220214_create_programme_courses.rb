class CreateProgrammeCourses < ActiveRecord::Migration[6.1]
  def change
    create_table :programme_courses do |t|
      t.integer :ProgrammeID
      t.integer :CourseID

      t.timestamps
    end
  end
end
