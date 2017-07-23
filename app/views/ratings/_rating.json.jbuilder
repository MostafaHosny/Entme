json.extract! rating, :id, :user_id, :stars, :comment, :rateable_id, :rateable_type, :created_at, :updated_at
json.url rating_url(rating, format: :json)
