class Employee ##belongs too

    attr_accessor :name, :manager, :position, :salary, :happiness
     
    @@all =[]

    def initialize(name, position, salary, manager, happiness=0)
        self.name = name
        self.salary = salary 
        self.happiness = happiness
        self.position = position
        self.manager = manager 
        @@all << self 
    end

    def manager
        @manager
    end
        
    def self.all
        @@all
    end

    def self.find_by_position(query)
        Employee.all.filter do |employee|
            employee.position == query 
        end
    end

    def self.find_by_salary(query)
        Employee.all.select do |employee|
            employee.salary == query
        end
    end
    

    # def tax_bracket 
    #     (self.salary + 3) && (self.salary - 3) = tax_bracket
    #     if self.salary == tax_bracket
    #     Employee.all.select do |e|
    #         e.salary == self
    #     end
    # end
   
#    def increase_salary(salary_increase)
#             new_salary = self.salary + salary_increase
#             new_salary
#             self.happiness += 4
    end
   
   
   
    # def tax_bracket  #if salary within 2 of each other  
    #     if self.salary.between?((self.salary + 2), (self.salary -2))
    #         self.find_by_salary(self.salary)
    #         else
    #             "They are not in your tax bracket"
    #         end
    #     end
    




5 
        ##change position
        ##day off happiness +3 
        #change manager 




