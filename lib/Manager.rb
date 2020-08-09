class Manager       
    
    attr_accessor :name, :age
   
    @@all =[]

    def initialize(name, age)
        @name = name
        @age = age 
       @@all << self 
    end


    def self.all
        @@all
    end

    def employees
        Employee.all.select{|employee| employee.manager == self}
     end

    def manager_name
        "#{self.name} is the name"
    end

    def hire_employee(employee_name)
        employee_name.manager = self
    end

    def fire_employee(employee_name)
        if employee_name.manager = self
            employee_name.manager = nil
        end
    end



end
