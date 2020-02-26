require("minitest/autorun")
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative("../pub")

class TestPub < MiniTest::Test
  def setup
    @pub1 = Pub.new("The Greyhound", 300, [@drink1, @drink2])
    @drink1 = Drink.new("Cosmopolitan", 6)
  end

  def test_pub_name
    assert_equal("The Greyhound", @pub1.name)
  end

  def test_get_till_amount
    assert_equal(300, @pub1.till)
  end

  # def test_get_drinks
  #
  # end

end
