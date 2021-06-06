class CreateRotations < ActiveRecord::Migration[6.1]
  def change
    create_table :rotations do |t|
      t.date :startDate
      t.date :endDate
      t.integer :programme_id

      t.timestamps
    end
  end
end
