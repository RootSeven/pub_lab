require("minitest/autorun")
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative("../pub")
require_relative("../drink")
require_relative("../customer")

class TestCustomer < MiniTest::Test

  def setup
    @customer1 = Customer.new("Mhairi", 20, 22)
    @customer2 = Customer.new("Ariana", 30, 33)
    @drink1 = Drink.new("Pina Colada", 10, 1)
    @pub1 = Pub.new("The Greyhound", 300, [@drink1, @drink2])
  end

  def test_get_name
    assert_equal("Mhairi", @customer1.name)
  end

  def test_get_age
    assert_equal(22, @customer1.age)
  end

  def test_count_wallet_cash
    assert_equal(30, @customer2.wallet)
  end

  def test_count_wallet_cash
    assert_equal(0, @customer2.units_consumed)
  end

  def test_buy_drink
    @customer2.buy_drink(@drink1)
    assert_equal(1, @customer2.units_consumed)
    assert_equal(20, @customer2.wallet)
  end


  # def test_buy_drink
  #   @customer2.buy_drink(@drink1, @pub1)
  #   assert_equal(20, @customer2.wallet)
  #   assert_equal(310, @pub1.till)
  # end


end
