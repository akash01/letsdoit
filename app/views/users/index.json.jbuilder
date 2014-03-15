json.array!(@users) do |user|
  json.extract! user, :id, :name, :fbkey
  json.url user_url(user, format: :json)
end
