require("minitest/autorun")
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative("../drink")
require_relative("../customer")
require_relative("../pub")
require_relative("../food")

class TestFood < MiniTest::Test
  def setup
    @food1 = Food.new("chips, cheese and mayo", 4, 5)
    @food2 = Food.new("pizza", 8, 7)
  end

  def test_get_name
    assert_equal("pizza", @food2.name)
  end

  def test_get_price
    assert_equal(8, @food2.price)
  end

  def test_get_rejuvenation_level
    assert_equal(7, @food2.rejuvenation_level)
  end

end
