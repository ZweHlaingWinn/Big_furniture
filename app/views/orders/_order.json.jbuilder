json.extract! order, :id, :order_date, :amount, :delivery_address, :created_at, :updated_at
json.url order_url(order, format: :json)
