json.extract! file_gradework, :id, :name, :path, :description, :size, :gradework, :created_at, :updated_at
json.url file_gradework_url(file_gradework, format: :json)
