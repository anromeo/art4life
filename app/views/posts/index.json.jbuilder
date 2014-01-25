json.array!(@posts) do |post|
  json.extract! post, :id, :title, :description, :price, :address, :user_id, :keyword
  json.url post_url(post, format: :json)
end
