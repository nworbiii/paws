json.array!(@pets) do |pet|
  json.extract! pet, :id, :animal_id, :name, :species, :sex, :breed, :age
  json.url pet_url(pet, format: :json)
end
