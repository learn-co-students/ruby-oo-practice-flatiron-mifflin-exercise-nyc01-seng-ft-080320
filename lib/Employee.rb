class Employee

    attr_accessor :name, :salary, :manager_name

    @@all = []

    def initialize(name, salary)
        @name = name
        @salary = salary
        @@all << self
    end

    def self.all
        @@all
    end

    def self.paid_over(fixnum)
        self.all.select {|employee| employee.salary > fixnum}
    end

    def self.find_by_department(dept_name)
        self.all.find_all {|employee| employee.manager_name.dept === dept_name}
    end

    def tax_bracket
        binding.pry
        Employee.all.select {|employee| employee.salary < (self.salary + 1000) && employee.salary > (self.salary - 1000) }
    end

end
