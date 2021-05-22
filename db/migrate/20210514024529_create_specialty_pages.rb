class CreateSpecialtyPages < ActiveRecord::Migration[6.1]
  def change
    create_table :specialty_pages do |t|
      t.string :specialty_ID
      t.string :specialty_name

      t.timestamps
    end
  end
end
