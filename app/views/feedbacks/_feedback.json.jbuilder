json.extract! feedback, :id, :anotations, :score, :gradework, :user, :created_at, :updated_at
json.url feedback_url(feedback, format: :json)
