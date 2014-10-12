json.array!(@statuses) do |status|
  json.extract! status, :id, :name, :content, :link
  json.url status_url(status, format: :json)
end
