json.extract! gradework, :id, :name, :description, :status, :delivery_date, :begin_date, :hour, :locale, :semester, :created_at, :updated_at
json.url gradework_url(gradework, format: :json)
