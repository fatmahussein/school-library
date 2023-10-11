class Person
    attr_accessor :name , :age
    attr_reader :id

def initialize(name = "unknown",age,parent_permission = true)
        @id = id
        @name = name
        @age = age
    end

def can_use_services?
        @age || parent_permission
    end

private def of_age
            @age >= 18
            end

end