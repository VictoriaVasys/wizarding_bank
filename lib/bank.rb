require './lib/person'

class Bank
  attr_reader :name, :person1
  
  def initialize(name = "")
    @name = name
    puts "#{name} has been created"
    @person1 = Person.new("Minerva", 1000)
  end
  
  def open_account(person1)
    p "An account has been opened for #{person1.name} with #{name}."
  end
  
  def deposit(person1, deposit_amount)
    
    p "#{deposit_amount} galleons have been deposited into #{person1.name}'s #{name} account. Balance: #{balance} Cash: #{person1.cash} "
  end
  
end
