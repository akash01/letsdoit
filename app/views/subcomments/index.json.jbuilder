json.array!(@subcomments) do |subcomment|
  json.extract! subcomment, :id, :comment_id, :user_id, :body
  json.url subcomment_url(subcomment, format: :json)
end
