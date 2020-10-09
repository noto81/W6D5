# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

kitty = Cat.create!(birth_date: '2019/07/23', color: "orange", name: "Kafele", sex: "M", description: "I left App Academy")
kitty2 = Cat.create!(birth_date: '2016/05/19', color: "yellow", name: "Rosemary", sex: "F", description: "I'm still here")