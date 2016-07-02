json.array!(@join_table_post_tags) do |join_table_post_tag|
  json.extract! join_table_post_tag, :id
  json.url join_table_post_tag_url(join_table_post_tag, format: :json)
end
