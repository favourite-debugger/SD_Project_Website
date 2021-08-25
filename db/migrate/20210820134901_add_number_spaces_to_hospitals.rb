class AddNumberSpacesToHospitals < ActiveRecord::Migration[6.1]
  def change
    add_column :hospitals, :numberSpaces, :integer
  end
end
