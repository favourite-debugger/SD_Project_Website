class User < ApplicationRecord
	has_secure_password
	validates :email, uniqueness: true
	validates :email, :user_FirstName,:user_Type, presence: true

	def self.import(file)
        CSV.foreach(file.path, headers: true) do |row|
          User.create! row.to_hash
        end
      end
end
