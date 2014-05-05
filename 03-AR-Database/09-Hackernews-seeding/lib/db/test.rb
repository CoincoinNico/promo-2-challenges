require 'sqlite3'
require 'active_record'
require 'pathname'
require 'nokogiri'
require 'faker'
require 'open-uri'
require 'yaml'

#1 Creating fake users
# for i in 0...5  do
#   User.create(name: Faker::Name.name, email: Faker::Internet.email)
# end
post = {}
ratings = []
page = Nokogiri::HTML(open("https://news.ycombinator.com/"))

page.css('.title a').each do |element|
  post[element['href']] = element.inner_text
end

page.css('.subtext span').each do |element|
  ratings << element.inner_text
end

User.all.each do |user|


  user.posts.create(name: post_name, date: Time.now, source_url: post_url, rating: post_rating)
end