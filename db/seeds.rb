# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Project.create([
                   {name: "Project1", description: "This is a test projects", author: "User1", content: "very long string"},
                   {name: "Project2", description: "Awesome project creator", author: "User2", content: "very long string"}])
