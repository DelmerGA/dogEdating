# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Park.create(name: 'Park 1 - Buena Vista Park', address: 'Haight St & Buena Vista E', leash_rule: 'off-leash', image: 'http://i.imgur.com/pQEfOjSs.jpg')

Park.create(name: 'Park 2', address: 'some address', leash_rule: 'on/off leash', image: 'http://i.imgur.com/pQEfOjSs.jpg')

Park.create(name: 'Park 3', address: 'some address', leash_rule: 'on/off leash', image: 'http://i.imgur.com/pQEfOjSs.jpg')

Park.create(name: 'Park 4', address: 'some address', leash_rule: 'on/off leash', image: 'http://i.imgur.com/pQEfOjSs.jpg')

Park.create(name: 'Park 5', address: 'some address', leash_rule: 'on/off leash', image: 'http://i.imgur.com/pQEfOjSs.jpg')

Park.create(name: 'Park 6', address: 'some address', leash_rule: 'on/off leash', image: 'http://i.imgur.com/pQEfOjSs.jpg')


Dog.create(name: 'Dog 1- Riva', breed: 'Golden Retriever', age: '1 year, 6 months', photo: 'Dogs01.jpg', park_id: 1)

Dog.create(name: 'Dog 2', breed: 'some breed', age: 'some age', photo: 'Dogs01.jpg', park_id: 5)

Dog.create(name: 'Dog 3', breed: 'some breed', age: 'some age', photo: 'http://i.imgur.com/jZdX27Hs.png', park_id: 4)

Dog.create(name: 'Dog 4', breed: 'some breed', age: 'some age', photo: 'http://i.imgur.com/jZdX27Hs.png', park_id: 3)

Dog.create(name: 'Dog 5', breed: 'some breed', age: 'some age', photo: 'http://i.imgur.com/jZdX27Hs.png', park_id: 2)

Dog.create(name: 'Dog 6', breed: 'some breed', age: 'some age', photo: 'http://i.imgur.com/jZdX27Hs.png', park_id: 1)


Comment.create(body: 'this is a comment', dog_id: 1, user_id: 1)