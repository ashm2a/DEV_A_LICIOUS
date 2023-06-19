# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Cleaning database..."
Developer.destroy_all
User.destroy_all
puts "Creating users..."
User.create(email: "toto@gmail.com", encrypted_password: "1234")
puts "Creating developers..."
Developer.create(
  first_name:"Angie",
  last_name:"Duhard",
  description:"After years working in restaurants and and then as an administrative assistant, I am undergoing retraining and I want to become a fullstack developer.
  I've had a first experience with front-end development when I took classes online with an american university, and I'm looking forward to strenghtening the skills I learned and to learn more about the back-end side.",
  city:"Marseille",
  url_picture:"https://avatars.githubusercontent.com/u/102606729?v=4"
  price_per_day: 800
)

Developer.create(
  first_name:"Thomas",
  last_name:"Guerin",
  description:"I was a sales manager for 8 years. Then I created my company in global design. I want to learn to code to develop my company and complete my commercial offer. After the wagon, I would be freelancing after a few internships or jobs.",
  city: "Saint-Cyr-sur-Mer"
  url_picture:"https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/v1683874439/jrcbiehgpfipibrdwphh.jpg"
  price_per_day: 20
)



puts 'Finished!'
