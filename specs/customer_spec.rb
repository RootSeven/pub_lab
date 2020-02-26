require("minitest/autorun")
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative("../pub")
require_relative("../drink")
require_relative("../customer")

class TestCustomer < MiniTest::Test

  def setup
    @customer1 = Customer.new("Mhairi", 20)
    @customer2 = Customer.new("Ariana", 30)
  end

  def test_get_name
    assert_equal("Mhairi", @customer1.name)
  end

end
