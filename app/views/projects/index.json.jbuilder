json.array!(@projects) do |project|
  json.extract! project, :title, :abstract, :website, :class_id
  json.url project_url(project, format: :json)
end