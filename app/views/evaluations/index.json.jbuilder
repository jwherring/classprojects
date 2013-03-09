json.array!(@evaluations) do |evaluation|
  json.extract! evaluation, :user_id, :project_id, :comment, :rating
  json.url evaluation_url(evaluation, format: :json)
end