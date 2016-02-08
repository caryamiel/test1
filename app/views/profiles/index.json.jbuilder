json.array!(@profiles) do |profile|
  json.extract! profile, :id, :bio, :address
  json.url profile_url(profile, format: :json)
end


