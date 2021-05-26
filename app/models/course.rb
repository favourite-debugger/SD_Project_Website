class Course < ApplicationRecord
    has_many :course_specialties, :dependent => :delete_all
end
