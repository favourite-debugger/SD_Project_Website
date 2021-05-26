class CourseSpecialty < ApplicationRecord
  belongs_to :Course
  belongs_to :Specialty
end
