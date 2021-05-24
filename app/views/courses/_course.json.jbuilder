json.extract! course, :id, :CourseDescription, :created_at, :updated_at
json.url course_url(course, format: :json)
