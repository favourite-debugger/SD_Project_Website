class Hospital < ApplicationRecord
  validates :hospital_name, uniqueness: true
  validates :hospital_name, :hospital_location, presence: true
  has_many :hospital_assignments

  has_many :schedules, :dependent => :delete_all 

end
