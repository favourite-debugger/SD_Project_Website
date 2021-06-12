class User < ApplicationRecord
	has_secure_password
	validates :email, uniqueness: true
	validates :email, :user_FirstName,:user_Type, presence: true
  has_one :student

	def self.import(file)
        CSV.foreach(file.path, headers: true) do |row|
          #format: User.new(:database_field_name => row["csv_column_header_name])
          @user = User.new(:email => row["email"], :user_FirstName => row["firstName"], :user_LastName => row["lastName"], :password => row["password"], :user_ContactNo => row["contactNo"], :user_Type => row["type"])
          @user.save!
          
          #create a student with the same id as the user record
          puts(row["type"])
          if (row["type"] == "Student")
            #c = Client.new(firm_id: id); c.save; 
            #b = Beneficiary.new(account_id: id); b.save; b
            student = Student.new(user_id: @user.id, :studentNumber => row["studentNumber"], :courseCodes => row["courseCodes"], :programme_id => row["programme_id"])
            student.save
          end
        end
      end

end


#-----------------------------------------------------------------------------------
#table = CSV.parse(File.read(file.path), headers: true)
#table.each {|row|

              #puts("Start Date: " +row["BlockStartDate"])
#              puts("End Date: " +row["BlockEndDate"])
#              puts("")
              # Block.create(:BlockStartDate => row["BlockStartDate"], :BlockEndDate => row["BlockEndDate"])

#          }