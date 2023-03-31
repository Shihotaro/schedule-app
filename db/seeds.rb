# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Schedule.create(title: "test", startDay:"2023-03-30",finalDay:"2023-10-25",allDay:true,scheduleMemo:"test1")
Schedule.create(title:"Hello",startDay:"2023-02-14",finalDay:"2023-12-25",allDay:false,scheduleMemo:"Hello world")