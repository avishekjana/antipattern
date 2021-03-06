json.array!(@posts) do |post|
  json.extract! post, :id, :title, :content, :author_id, :visible, :category_id
  json.url post_url(post, format: :json)
end
