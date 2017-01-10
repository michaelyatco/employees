class Employee

  attr_reader :first_name, :last_name
  attr_accessor :salary, :active

  def initialize(input_hash)
    @first_name = input_hash[:first_name] || "John"
    @last_name = input_hash[:last_name] || "Messina"
    @salary = input_hash[:salary] || 50000
    @active = input_hash[:active] || false
  end

  def print_info
    "#{first_name} #{last_name} makes $#{salary} now. Wow!!!!"
  end

  def give_annual_raise
    @salary = 1.05 * @salary
  end

  def full_name
    # if last_name[-1] == "s"
    if last_name.end_with?("s")
      "#{first_name} #{last_name}, Esquire"
    else
      "#{first_name} #{last_name}"
    end
  end
end

employee1 = Employee.new(active: true, last_name: "Zhao", salary: 100000)
employee2 = Employee.new(active: true, first_name: "Kenny", last_name: "Parekhs", salary: 100000)
employee3 = Employee.new({})
puts employee1.print_info
puts employee2.print_info
puts employee3.print_info

puts employee2.full_name