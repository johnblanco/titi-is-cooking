json.array!(@ingredients) do |ingredient|
  json.extract! ingredient, :id, :name, :amount_included, :measurement_unit
  json.url ingredient_url(ingredient, format: :json)
end
