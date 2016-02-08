json.array!(@talkresps) do |talkresp|
  json.extract! talkresp, :id, :user_id, :projtalk_id, :talkcontent
  json.url talkresp_url(talkresp, format: :json)
end
