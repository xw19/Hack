json.array!(@children) do |child|
  json.extract! child, :id, :uid, :home_id, :name, :place, :age, :gender, :since, :password
  json.url child_url(child, format: :json)
end
