require('./book')
require('./student')
require('./teacher')
require('./rental')
require('./list')
require('./create')

class App
  def initialize
    @people = []
    @books = []
    @rentals = []
    @list = List.new(@books, @people, @rentals)
    @create = Create.new(@books, @people, @rentals)
  end

  
