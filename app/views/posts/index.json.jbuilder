json.array!(@posts) do |post|
  json.extract! post, :id, :nickname, :body, :upvotes, :downvotes
  json.url post_url(post, format: :json)
end
