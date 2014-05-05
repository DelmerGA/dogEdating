# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Park.create(name: 'Buena Vista Park', address: 'Haight St & Buena Vista E
San Francisco, CA 94101', leash_rule: 'off-leash', image: 'http://i.imgur.com/pQEfOjSs.jpg')

#creating 5 instances of seed data for Park
5.times do |i|
  Park.create(name: 'Park ##{i}', address: 'some address', leash_rule: 'on/off leash', image: 'http://i.imgur.com/pQEfOjSs.jpg')
end

Dog.create(name: 'Riva', breed: 'Golden Retriever', age: '1 year, 6 months', image: 'http://i.imgur.com/mIMBpCUs.png')

#creating 5 instances of seed data for Dog
#would like to ask for birth year and convert that to an age
5.times do |i|
  Dog.create(name: 'Dog ##{i}', breed: 'some breed', age: 'some age', image: 'http://i.imgur.com/jZdX27Hs.png')
end 

