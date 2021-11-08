# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require "open-uri"

puts "Cleaning up database..."
Bathroom.destroy_all
puts "Database cleaned"



p bathroom_one = Bathroom.new(
  title: 'Light & Spacious Bathroom in London',
  address: '10 Clifton Gardens London W9 1DT',
  content: 'This primary bathroom by Gustavson/Dundes Architecture & Design is a perfect example of a dreamy traditional bathroom with a soaking tub, a large shower, and beautiful design details.',
  price: 75
)

file = URI.open('https://www.thespruce.com/thmb/PNzqg5SKB4TKeODZhH1YS15O6as=/958x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/traditional-bathroom-5a4534b547c2660036c0be70.jpg')

bathroom_one.photo.attach(io: file, filename: 'bathroom1.jpg', content_type: 'image/jpg')

bathroom_one.save

p bathroom_two = Bathroom.new(
  title: 'Stylish Bathroom Close to River Thames',
  address: '5 Queensmill Road London SW6 6JP',
  content: 'A large painting is the focus of attention in this modern bathroom by Munger Interiors. All-white decor lets the art speak for itself.',
  price: 65
)

file = URI.open('https://www.thespruce.com/thmb/Kk39aBVRoJpBJqwbsyBf4FbagJI=/640x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/de44a5c758ff-5a4547b6842b1700379fd152.jpg')

bathroom_two.photo.attach(io: file, filename: 'bathroom2.jpg', content_type: 'image/jpg')

bathroom_two.save

p bathroom_three = Bathroom.new(
  title: 'Luxury Bathroom at St Pancras Clock Tower Guest Suite',
  address: 'Euston Rd London N1C 4QP',
  content: 'This white, soft modern bathroom by Caden Design Group would look rather ordinary if it wasn`t for the stunning arched windows adding a wonderful detail.',
  price: 150
)

file = URI.open('https://www.thespruce.com/thmb/23mGUbCINeaYbV7UN8r7zipyMqQ=/958x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/modern-bathroom-5a4546c422fa3a00360d2d6b.jpg')

bathroom_three.photo.attach(io: file, filename: 'bathroom3.jpg', content_type: 'image/jpg')

bathroom_three.save

p bathroom_four = Bathroom.new(
  title: 'White, soft modern bathroom in Knightsbridge',
  address: 'Euston Rd London N1C 4QP',
  content: 'If you`re fond of baths, this contemporary bathroom by Duck & Shed should inspire you. This tub is definitely worthy of royalty!',
  price: 90
)

file = URI.open('https://www.thespruce.com/thmb/MLWs44-fe8IIs4fqwA6vJuV7D2s=/958x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/contemporary-bathroom-5a454ab796f7d00036e1f27b.jpg')

bathroom_four.photo.attach(io: file, filename: 'bathroom4.jpg', content_type: 'image/jpg')

bathroom_four.save

p bathroom_five = Bathroom.new(
  title: 'Mediterranean Dream Bathroom With Scalloped Recess in Kensington',
  address: 'Queen`s Gate, South Kensington, London',
  content: 'An almost circular tub sits in the middle of a mosaic in this Mediterranean bathroom by Fratantoni Luxury Estates. High ceilings gives a cathedral-like feel to this luxurious space.',
  price: 180
)

file = URI.open('https://www.thespruce.com/thmb/PiatllJcxKsonAncpfSZzHROywM=/804x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/traditional-bathroom-5a454e6daad52b00369333de.jpg')

bathroom_five.photo.attach(io: file, filename: 'bathroom5.jpg', content_type: 'image/jpg')

bathroom_five.save

p bathroom_six = Bathroom.new(
  title: 'Minimalist Contemporary Dream Bathroom, Chelsea',
  address: '64 Lower Sloane St, London SW1W',
  content: 'Some people`s dream bathroom is more like this one: contemporary and minimalist. This space by ade architecture is seamless and harmonious.',
  price: 110
)

file = URI.open('https://www.thespruce.com/thmb/0WCqIJ_1C6A0YVDZXPrRuoW14qc=/640x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/contemporary-bathroom-5a453e7c22fa3a00360bdaa4-c7108b9e0fff4c1b8f0922342854710f.jpg')

bathroom_six.photo.attach(io: file, filename: 'bathroom6.jpg', content_type: 'image/jpg')

bathroom_six.save
