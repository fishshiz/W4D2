# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
cat1 = Cat.create(birth_date: Date.new(2000, 1, 5), color: 'orange', name: 'sparkles', sex: 'M',
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum." )

cat2 = Cat.create(birth_date: Date.new(2005, 5, 2), color: 'black', name: 'sparklette', sex: 'F', description: "cool cat" )

# t.date :birth_date, null: false
# t.string :color, null: false
# t.string :name, null: false
# t.string :sex, :limit => 1, null: false
# t.text :description, null: false
