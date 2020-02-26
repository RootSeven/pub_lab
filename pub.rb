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
    # binding.pry
    if check_age(customer) == true && check_not_drunk(customer) == true
      customer.buy_drink(drink)
      @till += drink.price
    else
      return puts "GET OUT OF MY PUB"
    end

  end

  #if
    #customer check age is true
    #customer not drunk is true
  #then
    #customer buys a drink
    #till increases
  #else
    #pub tells customer "get out of my pub"
  #end

end



=begin

pub sells drink(customer, drink)
  if pub checks age and pub checks not drunk are both true
    then customer buys drink
    pub till increases by drink price
  else
    don't sell drink
  end

=end
