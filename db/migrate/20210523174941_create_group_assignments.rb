class CreateGroupAssignments < ActiveRecord::Migration[6.1]
  def change
    create_table :group_assignments do |t|
      t.belongs_to :group, null: false, foreign_key: true
      t.integer :StudentID
      t.integer :GroupYear

      t.timestamps
    end
  end
end
