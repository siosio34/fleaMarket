json.array!(@products) do |product|
  json.extract! product, :id, :name, :description, :price, :number, :mclass, :is_selled, :is_direct
  json.url product_url(product, format: :json)
end
