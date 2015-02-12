json.array!(@cases) do |case|
  json.extract! case, :id, :event_date, :event_type, :pti_urn, :version, :case_markers
  json.url case_url(case, format: :json)
end
