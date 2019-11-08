json.extract! recipe_crud, :id, :created_at, :updated_at
json.url recipe_crud_url(recipe_crud, format: :json)
