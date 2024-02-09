puts "Cleaning db..."

User.destroy_all

puts "Creating users..."

demo = User.create!(nickname: "demo", email: "demo@demo.com", password: "demo12345")

puts "Done!"
