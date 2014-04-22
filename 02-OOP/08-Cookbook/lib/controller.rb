require_relative 'cookbook'

class Controller
  def initialize(file)
    # Here you should instantiate the Cookbook model with the file
    @cookbook = Cookbook.new(file)
  end

  # TODO: Implement the methods to retrieve, add, and delete recipes through the model
  def web_import(ingredient)
    @cookbook.web_import(ingredient)
  end

  def list
    @cookbook.all
  end

  def add(recipe)
    @cookbook.create(recipe)
  end

  def delete(index)
    @cookbook.destroy(index)
  end

end
