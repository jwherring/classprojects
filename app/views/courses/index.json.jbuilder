json.array!(@courses) do |course|
  json.extract! course, :title, :section
  json.url course_url(course, format: :json)
end