json.extract! feedback, :id, :score, :anotation, :created_at, :updated_at
json.url feedback_url(feedback, format: :json)
