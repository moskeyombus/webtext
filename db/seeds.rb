# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create!({
  username:              ENV['SUPERADMIN_USERNAME'],
  password:              ENV['SUPERADMIN_PASSWORD'],
  password_confirmation: ENV['SUPERADMIN_PASSWORD'],
  name:                  ENV['SUPERADMIN_NAME'],
  superadmin:            true
})