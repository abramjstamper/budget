# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

roles = Role.create([
    { name: 'admin', description: 'Administrator' },
    { name: 'user', description: 'Standard User' }
  ])
User.create([
  { first_name: 'Test', last_name: 'Test', email: 'test@test.com' password: 'test', roles: roles[1] },
  { first_name: 'Test', last_name: 'Test', email: 'super@test.com' password: 'test', roles: roles[0] },
  { first_name: 'Abram', last_name: 'Stamper', email: 'abram.j.stamper@me.com' password: 'test', roles: roles[0] }
])