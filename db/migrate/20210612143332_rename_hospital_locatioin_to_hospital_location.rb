class RenameHospitalLocatioinToHospitalLocation < ActiveRecord::Migration[6.1]
  def change
    rename_column :hospitals, :hospital_locatioin, :hospital_location
  end
end
