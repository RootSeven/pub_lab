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
