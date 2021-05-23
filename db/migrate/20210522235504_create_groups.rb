class CreateGroups < ActiveRecord::Migration[6.1]
  def change
    create_table :groups do |t|
      t.integer :BlockID
      t.integer :SpecialtyID

      t.timestamps
    end
  end
end
