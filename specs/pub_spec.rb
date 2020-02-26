require("minitest/autorun")
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative("../pub")
require_relative("../drink")
require_relative("../customer")
require_relative("../food")

class TestPub < MiniTest::Test
  def setup
    @pub1 = Pub.new("The Greyhound", 300, [@drink1, @drink2])
    @drink1 = Drink.new("Cosmopolitan", 7, 2)
    @drink2 = Drink.new("Gin and Tonic", 5, 1)
    @drink3 = Drink.new("Nuclear Penguin", 15, 10)
    @customer3 = Customer.new("Jane", 40, 13)
    @customer4 = Customer.new("Ronald", 20, 18)
  end

  def test_pub_name
    assert_equal("The Greyhound", @pub1.name)
  end

  def test_get_till_amount
    assert_equal(300, @pub1.till)
  end

  def test_count_drinks
    assert_equal(2, @pub1.drinks.count)
  end

  def test_check_age__false
    assert_equal(false, @pub1.check_age(@customer3))
  end

  def test_check_age__true
    assert_equal(true, @pub1.check_age(@customer4))
  end

  def test_check_not_drunk
    @customer4.buy_drink(@drink1)
    assert_equal(true, @pub1.check_not_drunk(@customer4))
    @customer4.buy_drink(@drink3)
    assert_equal(false, @pub1.check_not_drunk(@customer4))
  end

  def test_sell_drink
    @pub1.sell_drink(@customer4, @drink1)
    assert_equal(307, @pub1.till)
  end

  def test_dont_sell_drink_underage
    @pub1.sell_drink(@customer3, @drink1)
    assert_equal(300, @pub1.till)
  end

  def test_dont_sell_drink_drunk
    @pub1.sell_drink(@customer4, @drink3)
    @pub1.sell_drink(@customer4, @drink3)
    assert_equal(10, @customer4.units_consumed)
    assert_equal(315, @pub1.till)
  end

end
