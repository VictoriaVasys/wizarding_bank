require 'minitest/autorun'
require 'minitest/pride'
require './lib/person'

class PersonTest < Minitest::Test
  
  def test_it_exists
    assert_instance_of Person, Person.new
  end
  
  def test_person_starts_with_a_name_and_level_of_cash
    p = Person.new("Minerva", 1000)
    assert_equal "Minerva", p.name
    assert_equal 1000, p.cash
  end
  
  def test_another_person_starts_with_a_name_and_level_of_cash
    p = Person.new("Luna", 500)
    assert_equal "Luna", p.name
    assert_equal 500, p.cash
  end
  
  def test_on_creation_it_outputs_the_name_and_cash_amount
    skip
    assert_equal "Minerva has been created with 1000 galleons in cash.", Person.new("Minerva",1000)
    assert_equal "Luna has been created with 500 galleons in cash.", Person.new("Luna",500)
  end
  
end