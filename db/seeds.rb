puts "Cleaning db..."

User.destroy_all

puts "Creating users..."

test = User.create!(nickname: "test", email: "test@test.com", password: "test12345")

puts "Done!"
