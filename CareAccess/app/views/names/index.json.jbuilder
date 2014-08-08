json.array!(@names) do |name|
  json.extract! name, :id, :option, :branch_of_medicine, :review, :doc_preference
  json.url name_url(name, format: :json)
end
