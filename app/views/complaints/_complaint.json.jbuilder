json.extract! complaint, :id, :title, :text, :category, :company, :user_id, :created_at, :updated_at
json.url complaint_url(complaint, format: :json)
