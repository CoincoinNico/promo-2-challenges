class OrangeTree
  attr_reader :size, :age, :fruits, :status

  def initialize
    @size = 0
    @age = 0
    @status = "alive"
    @fruits = 0
  end

  def measure_height
    @size
  end

  def count_the_oranges
    @fruits if @status == "alive"
  end

  def pick_an_orange
    if @fruits > 0
      @fruits -= 1
    else
      puts "no orange on the tree"
    end

  end

  def one_year_passes
    @status = "dead" if ((@age > 50 && rand(50) == 1) || @age > 100)
    if (@status == "alive" && @age.between?(0, 10))
      @size += 1
    else
      @size = 0
    end

    case @age
    when 0...5,  @age > 15
      @fruits = 0
    when 5...10
      @fruits = 100
    when 10...15
      @fruits = 200
    end
    @age += 1
  end


end

pommier = OrangeTree.new
puts pommier.age
puts pommier.status
puts pommier.fruits
pommier.one_year_passes
puts pommier.age
puts pommier.status
puts pommier.fruits
pommier.one_year_passes
puts pommier.age
puts pommier.status
puts pommier.fruits
pommier.one_year_passes
puts pommier.age
puts pommier.status
puts pommier.fruits
pommier.one_year_passes
puts pommier.age
puts pommier.status
puts pommier.fruits
pommier.one_year_passes
puts pommier.age
puts pommier.status
puts pommier.fruits
pommier.one_year_passes
puts pommier.age
puts pommier.status
puts pommier.fruits
pommier.one_year_passes
puts pommier.age
puts pommier.status
puts pommier.fruits
pommier.one_year_passes
puts pommier.age
puts pommier.status
puts pommier.fruits
pommier.one_year_passes
puts pommier.age
puts pommier.status
puts pommier.fruits
pommier.one_year_passes
puts pommier.age
puts pommier.status
puts pommier.fruits
pommier.one_year_passes
puts pommier.age
puts pommier.status
puts pommier.fruits
pommier.one_year_passes
puts pommier.age
puts pommier.status
puts pommier.fruits
pommier.one_year_passes
puts pommier.age
puts pommier.status
puts pommier.fruits
pommier.one_year_passes
puts pommier.age
puts pommier.status
puts pommier.fruits
pommier.one_year_passes
puts pommier.age
puts pommier.status
puts pommier.fruits
pommier.one_year_passes
puts pommier.age
puts pommier.status
puts pommier.fruits
pommier.one_year_passes
puts pommier.age
puts pommier.status
puts pommier.fruits
pommier.one_year_passes
puts pommier.age
puts pommier.status
puts pommier.fruits
pommier.one_year_passes
puts pommier.age
puts pommier.status
puts pommier.fruits
pommier.one_year_passes
puts pommier.age
puts pommier.status
puts pommier.fruits
pommier.one_year_passes
puts pommier.age
puts pommier.status
puts pommier.pick_an_orange
puts pommier.fruits



