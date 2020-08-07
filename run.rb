require_relative "lib/Manager"
require_relative "lib/Employee"
require 'pry'


michael = Manager.new("Michael", "Paper", 52)
jan = Manager.new("Jan", "Rock", 48)

michael.hire_employee("Creed", 50000)
michael.hire_employee("Ryan", 20000)

dwight = Employee.new("Dwight", 20500)
dwight.manager_name = michael

erin = Employee.new("Erin", 20500)
erin.manager_name = michael




binding.pry
puts "done"
