json.array!(@attendances) do |attendance|
  json.extract! attendance, :id, :child_id, :date, :present, :health
  json.url attendance_url(attendance, format: :json)
end
