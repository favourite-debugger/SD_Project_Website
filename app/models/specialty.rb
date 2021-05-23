class Specialty < ApplicationRecord
    #the delete all method will delete all records that are associated to it in other tables
    has_many :groups, :dependent => :delete_all 
end
