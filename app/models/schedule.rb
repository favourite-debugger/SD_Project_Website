class Schedule < ApplicationRecord
  belongs_to :student
  belongs_to :specialty
  belongs_to :hospital
  belongs_to :rotation
end
