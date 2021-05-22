json.extract! user, :id, :email, :user_FirstName, :user_LastName, :password, :user_ContactNo, :user_Type, :created_at, :updated_at
json.url user_url(user, format: :json)
