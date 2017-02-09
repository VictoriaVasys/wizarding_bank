require 'minitest/autorun'
require 'minitest/pride'
require './lib/bank'
require './lib/person'

class BankTest < Minitest::Test
  attr_reader :chase, :person1
  def setup
    @chase = Bank.new("Chase")
    @person1 = Person.new("Minerva", 1000)
  end
  
  def test_it_exists
    assert_instance_of Bank, Bank.new
  end
  
  def test_bank_is_created_with_a_name
    assert_equal "JP Morgan Chase", chase.name
  end
  
  def test_another_bank_is_created_with_a_name
    fargo = Bank.new("Wells Fargo")
    assert_equal "Wells Fargo", fargo.name
  end
  
  def test_an_account_can_be_opened_by_passing_a_person
    chase_full = Bank.new("JP Morgan Chase")
    assert_equal "An account has been opened for Minerva with JP Morgan Chase.", chase_full.open_account(person1)
  end
  
  def test_it_can_accept_a_deposit
    assert_equal "750 galleons have been deposited into Minerva's Chase account. Balance: 750 Cash: 250 ", chase.deposit(person1)
  end
  
  def test_the_deposit_decreases_person1_cash
    
  end

end