# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require "open-uri"

puts "Cleaning up database..."
User.destroy_all
Bathroom.destroy_all
puts "Database cleaned"

puts "Creating the Users"
p user1 = User.create(
  first_name: 'John',
  last_name: 'Wick',
  email: 'john.wick@badass.com',
  password: 'donttouchmydog'
)

p user2 = User.create(
  first_name: 'The Dark',
  last_name: 'Knight',
  email: 'thedarkknight@rises.com',
  password: 'masterwayne'
)

puts "Done with the Users Creation"

puts "Creating the bathrooms"

################################################################################
p bathroom_one = Bathroom.new(
  title: 'Light and Spacious Bathroom in London',
  address: 'Clifton Gardens London',
  content: 'This primary bathroom by Gustavson/Dundes Architecture and Design is a perfect example of a dreamy bathroom.',
  price: 75
)

file = URI.open('https://www.thespruce.com/thmb/PNzqg5SKB4TKeODZhH1YS15O6as=/958x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/traditional-bathroom-5a4534b547c2660036c0be70.jpg')
bathroom_one.photos.attach(io: file, filename: 'bathroom1_1.jpg', content_type: 'image/jpg')

file = URI.open('https://www.thespruce.com/thmb/ZB8GkDRg89Qf76rWbEmHNPeYdwc=/1920x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/1438839125447_HERODHicksCleeveCt-smg144504v0.4-57fed91b3df78cbc2888246a.jpg')
bathroom_one.photos.attach(io: file, filename: 'bathroom1_2.jpg', content_type: 'image/jpg')

file = URI.open('https://www.thespruce.com/thmb/MNb4X_Yf3h776t-8Q8dtxJFVrko=/960x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/GettyImages-200461471-001-5a9ee36e1f4e130036740194.jpg')
bathroom_one.photos.attach(io: file, filename: 'bathroom1_3.jpg', content_type: 'image/jpg')

file = URI.open('https://www.thespruce.com/thmb/5WBPo7SuRlA3JyRhbHtZo3g55nM=/2674x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/shower-and-bath-in-modern-bathroom-169271410-5c4cec8d4cedfd0001ddb3fb.jpg')
bathroom_one.photos.attach(io: file, filename: 'bathroom1_4.jpg', content_type: 'image/jpg')

bathroom_one.user = user1
bathroom_one.save
################################################################################

################################################################################
p bathroom_two = Bathroom.new(
  title: 'Stylish Bathroom Close to River Thames',
  address: 'Queensmill Road London',
  content: 'A large painting is the focus of attention in this modern bathroom by Munger Interiors.',
  price: 65
)

file = URI.open('https://www.thespruce.com/thmb/Kk39aBVRoJpBJqwbsyBf4FbagJI=/640x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/de44a5c758ff-5a4547b6842b1700379fd152.jpg')
bathroom_two.photos.attach(io: file, filename: 'bathroom2_1.jpg', content_type: 'image/jpg')

file = URI.open('https://www.thespruce.com/thmb/ZB8GkDRg89Qf76rWbEmHNPeYdwc=/1920x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/1438839125447_HERODHicksCleeveCt-smg144504v0.4-57fed91b3df78cbc2888246a.jpg')
bathroom_two.photos.attach(io: file, filename: 'bathroom2_2.jpg', content_type: 'image/jpg')

file = URI.open('https://www.thespruce.com/thmb/MNb4X_Yf3h776t-8Q8dtxJFVrko=/960x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/GettyImages-200461471-001-5a9ee36e1f4e130036740194.jpg')
bathroom_two.photos.attach(io: file, filename: 'bathroom2_3.jpg', content_type: 'image/jpg')

file = URI.open('https://www.thespruce.com/thmb/5WBPo7SuRlA3JyRhbHtZo3g55nM=/2674x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/shower-and-bath-in-modern-bathroom-169271410-5c4cec8d4cedfd0001ddb3fb.jpg')
bathroom_two.photos.attach(io: file, filename: 'bathroom2_4.jpg', content_type: 'image/jpg')

bathroom_two.user = user2
bathroom_two.save
################################################################################

################################################################################
p bathroom_three = Bathroom.new(
  title: 'Luxury Bathroom at St Pancras Clock Tower Guest Suite',
  address: 'Euston Rd London',
  content: 'This white, soft modern bathroom by Caden Design Group would look rather ordinary.',
  price: 150
)

file = URI.open('https://www.thespruce.com/thmb/23mGUbCINeaYbV7UN8r7zipyMqQ=/958x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/modern-bathroom-5a4546c422fa3a00360d2d6b.jpg')
bathroom_three.photos.attach(io: file, filename: 'bathroom3.jpg', content_type: 'image/jpg')

file = URI.open('https://www.thespruce.com/thmb/ZB8GkDRg89Qf76rWbEmHNPeYdwc=/1920x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/1438839125447_HERODHicksCleeveCt-smg144504v0.4-57fed91b3df78cbc2888246a.jpg')
bathroom_three.photos.attach(io: file, filename: 'bathroom3_2.jpg', content_type: 'image/jpg')

file = URI.open('https://www.thespruce.com/thmb/MNb4X_Yf3h776t-8Q8dtxJFVrko=/960x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/GettyImages-200461471-001-5a9ee36e1f4e130036740194.jpg')
bathroom_three.photos.attach(io: file, filename: 'bathroom3_3.jpg', content_type: 'image/jpg')

file = URI.open('https://www.thespruce.com/thmb/5WBPo7SuRlA3JyRhbHtZo3g55nM=/2674x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/shower-and-bath-in-modern-bathroom-169271410-5c4cec8d4cedfd0001ddb3fb.jpg')
bathroom_three.photos.attach(io: file, filename: 'bathroom3_4.jpg', content_type: 'image/jpg')

bathroom_three.user = user1
bathroom_three.save
################################################################################

################################################################################
p bathroom_four = Bathroom.new(
  title: 'White, soft modern bathroom in Knightsbridge',
  address: 'Euston Rd London',
  content: 'If you`re fond of baths, this contemporary bathroom by Duck & Shed should inspire you.',
  price: 90
)

file = URI.open('https://www.thespruce.com/thmb/MLWs44-fe8IIs4fqwA6vJuV7D2s=/958x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/contemporary-bathroom-5a454ab796f7d00036e1f27b.jpg')
bathroom_four.photos.attach(io: file, filename: 'bathroom4.jpg', content_type: 'image/jpg')

file = URI.open('https://www.thespruce.com/thmb/ZB8GkDRg89Qf76rWbEmHNPeYdwc=/1920x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/1438839125447_HERODHicksCleeveCt-smg144504v0.4-57fed91b3df78cbc2888246a.jpg')
bathroom_four.photos.attach(io: file, filename: 'bathroom4_2.jpg', content_type: 'image/jpg')

file = URI.open('https://www.thespruce.com/thmb/MNb4X_Yf3h776t-8Q8dtxJFVrko=/960x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/GettyImages-200461471-001-5a9ee36e1f4e130036740194.jpg')
bathroom_four.photos.attach(io: file, filename: 'bathroom4_3.jpg', content_type: 'image/jpg')

file = URI.open('https://www.thespruce.com/thmb/5WBPo7SuRlA3JyRhbHtZo3g55nM=/2674x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/shower-and-bath-in-modern-bathroom-169271410-5c4cec8d4cedfd0001ddb3fb.jpg')
bathroom_four.photos.attach(io: file, filename: 'bathroom4_4.jpg', content_type: 'image/jpg')

bathroom_four.user = user2
bathroom_four.save
################################################################################

################################################################################
p bathroom_five = Bathroom.new(
  title: 'Mediterranean Dream Bathroom With Scalloped Recess in Kensington',
  address: 'Queen`s Gate South Kensington London',
  content: 'An almost circular tub sits in the middle of a mosaic in this Mediterranean bathroom by Fratantoni Luxury.',
  price: 180
)

file = URI.open('https://www.thespruce.com/thmb/PiatllJcxKsonAncpfSZzHROywM=/804x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/traditional-bathroom-5a454e6daad52b00369333de.jpg')
bathroom_five.photos.attach(io: file, filename: 'bathroom5.jpg', content_type: 'image/jpg')

file = URI.open('https://www.thespruce.com/thmb/ZB8GkDRg89Qf76rWbEmHNPeYdwc=/1920x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/1438839125447_HERODHicksCleeveCt-smg144504v0.4-57fed91b3df78cbc2888246a.jpg')
bathroom_five.photos.attach(io: file, filename: 'bathroom5_2.jpg', content_type: 'image/jpg')

file = URI.open('https://www.thespruce.com/thmb/MNb4X_Yf3h776t-8Q8dtxJFVrko=/960x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/GettyImages-200461471-001-5a9ee36e1f4e130036740194.jpg')
bathroom_five.photos.attach(io: file, filename: 'bathroom5_3.jpg', content_type: 'image/jpg')

file = URI.open('https://www.thespruce.com/thmb/5WBPo7SuRlA3JyRhbHtZo3g55nM=/2674x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/shower-and-bath-in-modern-bathroom-169271410-5c4cec8d4cedfd0001ddb3fb.jpg')
bathroom_five.photos.attach(io: file, filename: 'bathroom5_4.jpg', content_type: 'image/jpg')

bathroom_five.user = user1
bathroom_five.save
################################################################################

################################################################################
p bathroom_six = Bathroom.new(
  title: 'Minimalist Contemporary Dream Bathroom, Chelsea',
  address: 'Lower Sloane St London',
  content: 'Some people`s dream bathroom is more like this one: contemporary and minimalist.',
  price: 110
)

file = URI.open('https://www.thespruce.com/thmb/0WCqIJ_1C6A0YVDZXPrRuoW14qc=/640x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/contemporary-bathroom-5a453e7c22fa3a00360bdaa4-c7108b9e0fff4c1b8f0922342854710f.jpg')
bathroom_six.photos.attach(io: file, filename: 'bathroom6.jpg', content_type: 'image/jpg')

file = URI.open('https://www.thespruce.com/thmb/ZB8GkDRg89Qf76rWbEmHNPeYdwc=/1920x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/1438839125447_HERODHicksCleeveCt-smg144504v0.4-57fed91b3df78cbc2888246a.jpg')
bathroom_six.photos.attach(io: file, filename: 'bathroom6_2.jpg', content_type: 'image/jpg')

file = URI.open('https://www.thespruce.com/thmb/MNb4X_Yf3h776t-8Q8dtxJFVrko=/960x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/GettyImages-200461471-001-5a9ee36e1f4e130036740194.jpg')
bathroom_six.photos.attach(io: file, filename: 'bathroom6_3.jpg', content_type: 'image/jpg')

file = URI.open('https://www.thespruce.com/thmb/5WBPo7SuRlA3JyRhbHtZo3g55nM=/2674x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/shower-and-bath-in-modern-bathroom-169271410-5c4cec8d4cedfd0001ddb3fb.jpg')
bathroom_six.photos.attach(io: file, filename: 'bathroom6_4.jpg', content_type: 'image/jpg')

bathroom_six.user = user2
bathroom_six.save
################################################################################
