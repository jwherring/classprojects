json.array!(@project_participants) do |project_participant|
  json.extract! project_participant, :project_id, :user_id
  json.url project_participant_url(project_participant, format: :json)
end