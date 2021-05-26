class Block < ApplicationRecord
    has_many :groups
    has_many :hospital_assignments
end
