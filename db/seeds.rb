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


puts "completed the teachers"

puts "now doing lessons"

level1 = Lesson.new(
    description: "Beginner Level 1- learn the very basics of kitesurfing",
    hours: "Total 3 hours",
    price: "275$"
)

level2 = Lesson.new(
    description: "Indemidate Level 2- Already know how to kite and want to improve? This is for you",
    hours: "Total 5 hours",
    price: "475$"
)

level3 = Lesson.new(
    description: "Advanced Rider Level 3- Progress into the unknown",
    hours: "Total 3 hours",
    price: "300$"
)

jetski = Lesson.new(
    description: "Jetski Assisted- Full time in the water!",
    hours: "Total 2 hours",
    price: "250$"
)

zerotohero = Lesson.new(
    description: "Complete Course- Toes deep into kitesurfing!",
    hours: "Total 10 hours",
    price: "900$"
)

level1.save!
level2.save!
level3.save!
jetski.save!
zerotohero.save!



puts "saved lesson seeds"
