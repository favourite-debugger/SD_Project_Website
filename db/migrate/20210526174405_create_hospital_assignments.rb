class CreateHospitalAssignments < ActiveRecord::Migration[6.1]
  def change
    create_table :hospital_assignments do |t|
      t.references :user, null: false, foreign_key: true
      t.references :block, null: false, foreign_key: true
      t.references :hospital, null: false, foreign_key: true

      t.timestamps
    end
  end
end
