json.array! @fishes do |fish|
  json.extract! fish, :id, :name, :price, :quantity, :available, :description
end
