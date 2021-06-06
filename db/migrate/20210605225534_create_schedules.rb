class CreateSchedules < ActiveRecord::Migration[6.1]
  def change
    create_table :schedules do |t|
      t.integer :student_id
      t.integer :specialty_id
      t.integer :rotation_id
      t.integer :hospital_id

      t.timestamps
    end
  end
end
