require_relative "lib/Manager.rb"
require_relative "lib/Employee.rb"
require 'pry'



Brad = Manager.new("Brad", 40)
Gary = Manager.new("Gary", 55)
Angela = Manager.new("Angela", 24)
Dan = Manager.new("Larry", 50)



Tom = Employee.new("Tom", "clerk", 20, Brad)
Alicia = Employee.new("Alicia", "sales", 25, Brad)
Sally = Employee.new("Sally", "secretary", 20, Gary)
Paul = Employee.new("Paul", "sales", 30, Angela)
Larry = Employee.new("Larry", "sales", 22, Dan)



binding.pry


puts "done"
