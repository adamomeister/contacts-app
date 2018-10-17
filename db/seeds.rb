# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

100.times do
  contact = Contact.new(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: "chrisjames@email.com", phone_number: "1234556")
  contact.save
end