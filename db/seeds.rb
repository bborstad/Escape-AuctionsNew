# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# User seed data
user1 = User.create!(
    username: 'johnsmith',
    email: 'johnsmith@email.com',
    password: 'password'
)

user2 = User.create!(
    username: 'janesmith',
    email: 'janesmith@email.com',
    password: 'password'
)

# Auction seed data
auction1 = Auction.create!(
    user: user1,
    title: '1996 Chevrolet Beretta',
    starting_bid: '200.00',
    buy_now_price: '2000.00',
    winning_bid: '1700.00',
    expire_date: '20200917',
    status: 'true' 
)

auction2 = Auction.create!(
    user: user2,
    title: '1998 Dodge Stratus',
    starting_bid: '600.00',
    buy_now_price: '2599.99',
    winning_bid: '3150.45',
    expire_date: '20200617',
    status: 'true' 
)

auction3 = Auction.create!(
    user: user2,
    title: '2004 Saturn Vue',
    starting_bid: '200.00',
    buy_now_price: '1900.00',
    winning_bid: '1700.00',
    expire_date: '20200917',
    status: 'true' 
)

#Items
item1 = Item.create!(
    auction: auction1,
    description: 'Slight rust on rear panel'
)

item2 = Item.create!(
    auction: auction2,
    description: 'Rebuilt engine'
)

item3 = Item.create!(
    auction: auction3,
    description: 'Lots of hail damage'
)
