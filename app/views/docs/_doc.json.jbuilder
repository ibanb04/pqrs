json.extract! doc, :id, :url, :created_at, :updated_at
json.url doc_url(doc, format: :json)
