puts "Cleaning db..."

User.destroy_all
Content.destroy_all

puts "Creating users..."

test = User.create!(nickname: "test", email: "test@test.com", password: "test12345")

puts "Creating content..."

content1 = Content.create!(title: "Just a test", description: "Just a test", user: test)

puts "Done!"
