json.array!(@ratings) do |rating|
  json.extract! rating, :id, :number, :submitting_user, :subject_user, :comment
  json.url rating_url(rating, format: :json)
end
