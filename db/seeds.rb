require 'faker'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Table.destroy_all

10.times do |n|
  Table.create!(number: n)
end

5.times do
  Employee.create!(name: Faker::Name.name, unit: "TV production", table_id: 1)
end

5.times do
  Employee.create!(name: Faker::Name.name, unit: "Movie production", table_id: 1)
end

5.times do
  Employee.create!(name: Faker::Name.name, unit: "Audio-book publishing", table_id: 1)
end

5.times do
  Employee.create!(name: Faker::Name.name, unit: "Radio", table_id: 1)
end

5.times do
  Employee.create!(name: Faker::Name.name, unit: "Events", table_id: 1)
end

5.times do
  Employee.create!(name: Faker::Name.name, unit: "Cameraman", table_id: 1)
end

5.times do
  Employee.create!(name: Faker::Name.name, unit: "HR", table_id: 1)
end

5.times do
  Employee.create!(name: Faker::Name.name, unit: "IT", table_id: 1)
end

5.times do
  Employee.create!(name: Faker::Name.name, unit: "PM", table_id: 1)
end

5.times do
  Employee.create!(name: Faker::Name.name, unit: "Sales", table_id: 1)
end
