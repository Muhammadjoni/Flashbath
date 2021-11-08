# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Bathroom.destroy_all

p Bathroom.create!(
  title: 'Light & Spacious Bathroom in London',
  address: '10 Clifton Gardens London W9 1DT',
  content: 'This primary bathroom by Gustavson/Dundes Architecture & Design is a perfect example of a dreamy traditional bathroom with a soaking tub, a large shower, and beautiful design details.',
  price: 75
)

p Bathroom.create!(
  title: 'Stylish Bathroom Close to River Thames',
  address: '5 Queensmill Road London SW6 6JP',
  content: 'A large painting is the focus of attention in this modern bathroom by Munger Interiors. All-white decor lets the art speak for itself, and touches of comfort and luxury make this space an inspiration for those who enjoy simple yet high-quality decor.',
  price: 65
)

p Bathroom.create!(
  name: 'Luxury Bathroom at St Pancras Clock Tower Guest Suite',
  address: 'Euston Rd London N1C 4QP',
  description: 'This white, soft modern bathroom by Caden Design Group would look rather ordinary if it wasn`t for the stunning arched windows adding a wonderful detail. Note how the windows are encased within the large frameless mirror, providing a seamless look.',
  price: 150
)

p Bathroom.create!(
  name: 'White, soft modern bathroom in Knightsbridge',
  address: 'Euston Rd London N1C 4QP',
  description: 'If you`re fond of baths, this contemporary bathroom by Duck & Shed should inspire you. The space avoids looking too 80s by adding lots of flowers and an organic window covering. This tub is definitely worthy of royalty!',
  price: 90
)

p Bathroom.create!(
  name: 'Mediterranean Dream Bathroom With Scalloped Recess in Kensington',
  address: ' Queen`s Gate, South Kensington, London',
  description: 'An almost circular tub sits in the middle of a mosaic in this Mediterranean bathroom by Fratantoni Luxury Estates. Large windows bring in plenty of natural light, while the scalloped recess provides space for decor and bath items. High ceilings gives a cathedral-like feel to this luxurious space.',
  price: 180
)

p Bathroom.create!(
  name: 'Minimalist Contemporary Dream Bathroom, Chelsea',
  address: '64 Lower Sloane St, London SW1W',
  description: 'Some people`s dream bathroom is more like this one: contemporary and minimalist. This space by ade architecture is seamless, harmonious, and uses clean, straight lines. A few touches of wood add needed warmth. ',
  price: 110
)
