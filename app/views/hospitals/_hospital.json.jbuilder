json.extract! hospital, :id, :hospital_name, :hospital_location, :hospital_contactNo, :created_at, :updated_at
json.url hospital_url(hospital, format: :json)
