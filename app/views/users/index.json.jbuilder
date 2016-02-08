json.array!(@users) do |user|
  json.extract! user, :id, :name,:user_avatar, :email, :phonenumber, :profile
  json.url user_url(user, format: :json)
end
