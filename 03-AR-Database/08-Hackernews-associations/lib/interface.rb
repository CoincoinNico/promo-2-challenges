require_relative 'config/application'
require_relative 'models/post'
require_relative 'models/user'


def ask_and_get(param)
  puts "What is the #{param} of your piece of news?"
  gets.chomp
end

while true

  logged_in = false

  until logged_in
    puts "Please login with your <id>"
    #TODO: instantiate a user with his <id>
    id = gets.chomp
    logged_in = true if User.find_by(id: id)
    user = User.find_by(id: id)
  end

  puts "Hey #{user.name}, what do you want to do today? Enter <task_id>"
  puts "1. Create a post"
  puts "2. Read your posts"
  puts "3. Delete all posts"
  puts "4. Exit"

	choice =  gets.chomp.to_i

	case choice
  when 1
    name = ask_and_get("name")
    source_url = ask_and_get("source url")
    rating = ask_and_get("rating")
    post = { name: name, source_url: source_url, date: Time.now, rating: rating }
    #TODO: use ActiveRecord to add a new post for the user logged in!
    user.posts.create(post)
  when 2
    user.posts.all.each do |post|
      p "#{post.id}. #{post.name}. URL: #{post.source_url}, RATING: #{post.rating} ADDED ON: #{post.date} BELONGS TO #{post.user.name}"
    end
  when 3
    #TODO: use ActiveRecord to delete all posts of current user
    user.posts.delete_all
  when 4
    break
	end

end