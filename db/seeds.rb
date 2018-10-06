# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#
Meetup.create!(:name => 'Scala meeting', :description => 'It is an sample awesome Scala meeting', :evaluation_date => 1538819575, :latitude => 53.1274275, :longtiude => 23.1575406)
Meetup.create!(:name => 'Ruby meeting', :description => 'It is an sample awesome Ruby meeting', :evaluation_date => 1538819576, :latitude => 53.1174275, :longtiude => 23.1375406)
Meetup.create!(:name => 'Meet.js', :description => 'It is an sample awesome Javascript meeting', :evaluation_date => 1538819577, :latitude => 53.15754006, :longtiude => 23.1575406)

p "Created #{Meetup.count} meetups"