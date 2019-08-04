# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Student.create([
    { first_name: "Rick", last_name: "Sanchez" }, 
    { first_name: "Morty", last_name: "Smith" }
])

SchoolClass.create([
    { title: "Science", room_number: 1, student_id: 1 },
    { title: "Philosophy", room_number: 2, student_id: 1 },
    { title: "Biology", room_number: 3, student_id: 2},
    { title: "Ass-kicking", room_number: 4, student_id: 2}
])