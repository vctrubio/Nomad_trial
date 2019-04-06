# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


puts "creating the 3 teachers"


victor = Teacher.new(
    first_name: "Victor",
    last_name: "Rubio",
    phone_number_mxn: "09987654",
    contract_start: "November 15th",
    contract_end: "March 15th",
    languages: "English and Spanish"
)

miguel = Teacher.new(
    first_name: "Miguel",
    last_name: "Hernandez",
    phone_number_mxn: "09986774",
    contract_start: "November 15th",
    contract_end: "March 25th",
    languages: "English and Spanish"

)

nicolas = Teacher.new(
    first_name: "Nico",
    last_name: "Fernandez",
    phone_number_mxn: "03333774",
    contract_start: "December 15th",
    contract_end: "March 25th",
    languages: "English"

)


victor.save!
miguel.save!
nicolas.save!


puts "completed..."
