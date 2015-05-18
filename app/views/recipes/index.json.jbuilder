json.array!(@recipes) do |recipe|
  json.extract! recipe, :id, :name, :portions, :cost
  json.url recipe_url(recipe, format: :json)
end
