require ('pry-byebug')

class Pub

attr_reader :name, :drinks
attr_accessor :till

  def initialize(name, till, drinks)
    @name = name
    @till = till
    @drinks = drinks
  end

  def check_age(customer)
    if customer.age >= 18
      return true
    else
      return false
    end
  end

  def check_not_drunk(customer)
    if customer.units_consumed < 10
      return true
    else
      return false
    end
  end

  def sell_drink(customer, drink)
    if check_age(customer) == true && check_not_drunk(customer) == true
      customer.buy_drink(drink)
      @till += drink.price
    else
      return puts "GET OUT OF MY PUB"
    end

  end

end
