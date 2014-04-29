require_relative "../config/application"
require_relative "../models/post"
require_relative "../models/user"

# Seed you database with post data from hacker news
# And fake users using Faker gem

puts "Seeding database..."

#TODO: Your code goes here
# 1. create fake users
# 2. Scrape news from https://news.ycombinator.com/ and associate posts to your existing users

# 1 Creating fake users

# for i in 0..100  do
#   User.create(name: Faker::Name.name, email: Faker::Internet.email)
# end

# 2. Open news
hash_posts = {}
open("https://news.ycombinator.com/").read do |line|
  p line
end

