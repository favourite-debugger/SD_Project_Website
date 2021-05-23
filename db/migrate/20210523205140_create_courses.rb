class CreateCourses < ActiveRecord::Migration[6.1]
  def change
    create_table :courses, id: false do |t|
      t.integer :CourseID
      t.string :CourseDescription

      t.timestamps
    end
    execute "ALTER TABLE courses ADD PRIMARY KEY (CourseID);"
    execute "ALTER TABLE courses MODIFY CourseID INT auto_increment;"
  end
end
