require 'csv'

puts "Importing fruits..."
CSV.foreach(Rails.root.join("db/seeds/fruits.csv"), headers: true) do |row|
  Fruit.create! do |fruit|
    fruit.id = row[0]
    fruit.name = row[1]
    fruit.description = row[2]
  end
end

puts "Importing pets..."
CSV.foreach(Rails.root.join("db/seeds/pets.csv"), headers: true) do |row|
  Pet.create! do |pet|
    pet.id = row[0]
    pet.name = row[1]
    pet.description = row[2]
  end
end
