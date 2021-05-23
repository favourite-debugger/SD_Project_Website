class CreateProgrammes < ActiveRecord::Migration[6.1]
  def change
    create_table :programmes do |t|
      t.string :programme_code

      t.timestamps
    end
  end
end
