json.extract! page_link, :id, :scope, :name, :position, :created_at, :updated_at
json.url page_link_url(page_link, format: :json)
