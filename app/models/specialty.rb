class Specialty < ApplicationRecord
    has_many :group_assignments
    has_many :groups
end
