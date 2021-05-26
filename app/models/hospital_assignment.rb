class HospitalAssignment < ApplicationRecord
  belongs_to :user
  belongs_to :block
  belongs_to :hospital
  has_many :users
  has_many :blocks
  has_many :hospitals
end
