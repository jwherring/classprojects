json.array!(@roles) do |role|
  json.extract! role, :user_id, :role
  json.url role_url(role, format: :json)
end