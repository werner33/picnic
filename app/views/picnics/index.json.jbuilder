json.array!(@picnics) do |picnic|
  json.extract! picnic, :id
  json.url picnic_url(picnic, format: :json)
end
