class CreateCourseSpecialties < ActiveRecord::Migration[6.1]
  def change
    create_table :course_specialties do |t|
      t.references :course, null: false, foreign_key: true
      t.references :specialty, null: false, foreign_key: true

      t.timestamps
    end
    add_index :course_specialties, [:course_id, :specialty_id], unique: true
  end
end
