class Schedule < ApplicationRecord
    belongs_to :students
    belongs_to :hospital
    belongs_to :rotation
    belongs_to :specialty

end
