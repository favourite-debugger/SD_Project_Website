class User < ApplicationRecord
	has_secure_password
	validates :email, uniqueness: true
	validates :email, :user_FirstName,:user_Type, presence: true
end
