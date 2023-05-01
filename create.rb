require('./user_input')
require('./save_data')
require('./retrieve_data')
require('./rental_subscribe')
class Create
  include SaveData
  include RetrieveData
  include RentalSubscribe

  def create_person
    selected_person, name, age = person_info
    case selected_person
    when 1
      student_permission = person_permission
      save_person(Student.new(nil, age, name, parent_permission: student_permission))
    when 2
      specialization = person_specialization
      save_person(Teacher.new(specialization, age, name))
    end
    puts 'Person created successfully.'
  end

  def create_book
    title, author = book_info
    save_book(Book.new(title, author))
    puts 'Book created successfully.'
  end

 
