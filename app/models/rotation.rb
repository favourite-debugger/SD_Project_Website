class Rotation < ApplicationRecord
    has_many :schedules, :dependent => :delete_all 
end
