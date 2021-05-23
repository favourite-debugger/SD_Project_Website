class Group < ApplicationRecord

  belongs_to :specialty
  belongs_to :block
  has_many :group_assignments, :dependent => :delete_all 

end
