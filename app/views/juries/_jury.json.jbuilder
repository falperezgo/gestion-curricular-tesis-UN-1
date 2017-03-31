json.extract! jury, :id, :firstname, :lastname, :email, :phone, :identification, :created_at, :updated_at
json.url jury_url(jury, format: :json)
