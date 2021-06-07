class Schedule < ApplicationRecord

    belongs_to :student
    belongs_to :hospital
    belongs_to :rotation
    belongs_to :specialty

    def self.create_with_form_data(student_id, rotation_id, specialty_id, hospital_id)
        puts('look here')
        puts(student_id)
        @schedule = Schedule.new(:student_id => student_id, :rotation_id => rotation_id, :specialty_id => specialty_id, :hospital_id => hospital_id)
        @schedule.save!
    end


end
