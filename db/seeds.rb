# Celebrity.destroy_all



# puts "Starting seed deployment"

# User.create(email: "test@test.fr", id: 1)

# Celebrity.create({ user_id: 1, name: "Ian Somerhalder", price_per_hour: 45, location: "Los Angeles, USA", rating: 4.9 })
# # Celebrity.create({ name: "George Clooney", price_per_hour: 50, location: "Hollywood, USA", rating: 5.0 })
# # Celebrity.create({ name: "Paris Hilton", price_per_hour: 40, location: "Beverly Hills, USA", rating: 4.8 })
# # Celebrity.create({ name: "Squeezie", price_per_hour: 30, location: "Paris, France", rating: 4.7 })



# puts "seeding finished"

User.destroy_all
Celebrity.destroy_all

puts "Starting seed deployment"
users_email = ["test1@test.fr", "test2@test.net", "test3@test.com"]
@celebrities_name = ["George Clooney", "Paris Hilton", "Squeezie"]
@celebrities_location = ["Hollywood", "Paris", "Lyon"]
@index = 0

users_email.each do |user_email|
  user = User.new
  user.email = user_email
  user.password = "123456"
  user.password_confirmation = "123456"
  user.save!

  celebrity = Celebrity.new
  celebrity.name = @celebrities_name[@index]
  celebrity.price_per_hour = rand(1..100)
  celebrity.location = @celebrities_location[@index]
  celebrity.rating = rand(1..5)
  celebrity.user_id = user.id
  celebrity.save!
  @index += 1
end
puts "seeding finished"
