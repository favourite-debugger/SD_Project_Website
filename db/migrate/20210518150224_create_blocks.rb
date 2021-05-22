class CreateBlocks < ActiveRecord::Migration[6.1]
  def change
    create_table :blocks do |t|
      t.date :BlockStartDate
      t.date :BlockEndDate

      t.timestamps
    end
  end
end
