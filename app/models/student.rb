class Student < ApplicationRecord
    belongs_to :user
    belongs_to :programme
    has_many :schedule, :dependent => :delete_all 
end
