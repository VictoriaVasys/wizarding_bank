class Person
  attr_reader :name, :cash
  
  def initialize(name = "", cash = 0)
    @name = name
    @cash = cash
    puts "#{name} has been created with #{cash} galleons in cash."
  end
  
end

person1 = Person.new("Minerva", 1000)
person2 = Person.new("Luna", 500)
