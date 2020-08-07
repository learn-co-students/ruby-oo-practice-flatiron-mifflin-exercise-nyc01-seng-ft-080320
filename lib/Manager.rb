class Manager

    attr_accessor :name, :dept, :age

    @@all = []

    def initialize(name, dept, age)
        @name = name
        @dept = dept
        @age = age
        @@all << self
    end

    def employees
        Employee.all.select {|employee| employee.manager_name == self}
    end

    def self.all
        @@all
    end

    def hire_employee(name, salary)
        hire = Employee.new(name, salary)
        hire.manager_name = self
    end

    def self.all_departments
        self.all.collect {|manager| manager.dept}
    end

    def self.average_age
        total_age = self.all.map {|manager| manager.age}.sum.to_f
        total_age / self.all.count
    end

end
