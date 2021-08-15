class AddWeeksToCourseSpecialties < ActiveRecord::Migration[6.1]
  def change
    add_column :course_specialties, :weeks, :int
  end
end
