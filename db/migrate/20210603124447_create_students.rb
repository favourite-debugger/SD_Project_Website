class CreateStudents < ActiveRecord::Migration[6.1]
  def change
    create_table :students do |t|
      t.integer :studentNumber
      t.string :courseCodes
      t.string :programmeCode

      t.timestamps
    end
  end
end
