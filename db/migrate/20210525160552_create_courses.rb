class CreateCourses < ActiveRecord::Migration[6.1]
  def change
    create_table :courses do |t|
      t.string :CourseDescription
      t.string :string

      t.timestamps
    end
  end
end
