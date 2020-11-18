# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Destroying old users"
User.destroy_all
puts "Creating new users"


user = User.create(email:"abd@123.com", password: "password")
usera = User.create(email:"doremi@123.com", password: "qawsed")

puts "Finished creating #{User.count} users"


puts "Destroying old books"
Book.destroy_all
puts "Creating Books"

Book.create(title: "Great Expectations", author: "Charles Dickens", genre: "Historical Fiction", condition: "Badly Worn", year: 1989, publisher: "John Whiley & Sons", price: 3, user: user)
Book.create(title: "Integral Equations for Civil Engineering", author: "Mat Ematics", genre: "Engineering", condition: "Like New", year: 2000, publisher: "Oxfort University Press", price: 10, user: usera)
Book.create(title: "London Arts in 20th Century", author: "Ann Writer", genre: "Art", condition: "Worn", year: 2010, publisher: "ACC Art Books", price: 15, user: user)


puts "Finished creating #{Book.count} books"

require "open-uri"

# file = URI.open('https://giantbomb1.cbsistatic.com/uploads/original/9/99864/2419866-nes_console_set.png')
# article = Article.new(title: 'NES', body: "A great console")
# article.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
