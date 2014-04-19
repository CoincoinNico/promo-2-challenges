class OrangeTree
  attr_reader :size, :age, :fruits, :status

  def initialize
    @size = 0
    @age = 0
    @status = "alive"
    @fruits = 0
  end

  def height
    @size
  end

  def dead?
    @status == "dead" ? true : false
  end

  def count_the_oranges
    @fruits if @status == "alive"
  end

  def pick_a_fruit!
    if @fruits > 0
      @fruits -= 1
    else
      puts "no orange on the tree"
    end
  end

  def one_year_passes!
    @status = "dead" if ((@age > 50 && rand(5) == 1) || @age >= 100)
    @size += 1 if (@status == "alive" && @age.between?(0, 9))

    case @age
    when 0...5
      @fruits = 0
    when 5...10
      @fruits = 100
    when 10...15
      @fruits = 200
    else
      @fruits = 0
    end
    @age += 1
  end

end