json.extract! product, :id, :name, :price, :color, :size, :created_at, :updated_at
json.url product_url(product, format: :json)
