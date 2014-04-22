class UI
  TASKS = {
    import: "- Import recipes from marmiton [web_import]",
    list: "- List all recipes [list]",
    add:  "- Add a new recipe [add]",
    del:  "- Delete a recipe [del <recipe_id>]",
    exit: "- Exit [exit]"
  }

  def initialize(controller)
    @controller = controller
    @running = true
  end

  def web_import
    puts "-- Import recipes for which ingredient --"
    ingredient = gets.chomp
    @controller.web_import(ingredient)
    "Importing recipe data from marmiton for #{ingredient}"
  end

  def list
    puts "-- Here are all your recipes --"
    @controller.list.each_with_index { |row, i| p "#{i+1}. #{row}"}
  end

  def add
    puts "-- Enter a new recipe name --"
    recipe = gets.chomp
    @controller.add(recipe)
    puts "Your #{recipe} has been added successfully !"
  end

  def del
    puts "-- Delete a recipe by specifying its number --"
    index = gets.chomp.to_i
    recipe = @controller.delete(index)

    puts "Your #{recipe} has been successfully deleted !"
  end

  def exit
    puts "Goodbye my dear friend."
  end

  def user_input
    puts "-- Need to write something ?--"
    something = gets.chomp
    something
  end

  def display
    puts "-- Welcome to the CookBook --"

    while @running
      print "\n"

      display_tasks
      dispatch(user_input)

      print "\n"
    end
  end

  ###
  ##  You don't need to modify the following methods !
  ###
  def display_tasks
    puts "What do you want to do? \n"
    puts TASKS.values
  end

  # The dispatch method takes a String or a Symbol as an argument
  # and calls the method with the same name.
  #
  #  Examples:
  #
  #   dispatch(:del) => Will call the `del` method in the current class
  #   dispatch("add") => Will call the `add` method in the current class
  #
  # To understand this, read the doc : http://ruby-doc.org/core-2.1.1/Object.html#method-i-send
  def dispatch(task)
    self.send(task.to_sym)
  end
end
