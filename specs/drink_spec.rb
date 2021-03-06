require("minitest/autorun")
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative("../drink")
require_relative("../customer")
require_relative("../pub")
require_relative("../food")

class TestDrink < MiniTest::Test

  def setup
    @drink1 = Drink.new("Cosmopolitan", 7, 2)
    @drink2 = Drink.new("Gin and Tonic", 5, 1)
  end

  def test_get_name
    assert_equal("Cosmopolitan", @drink1.name)
  end

  def test_get_price
    assert_equal(7, @drink1.price)
  end

end
