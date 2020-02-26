class Customer

attr_reader :name, :age
attr_accessor :wallet, :units_consumed

  def initialize(name, wallet, age)
    @name = name
    @wallet = wallet
    @age = age
    @units_consumed = 0
  end

  def buy_drink(drink)
    @wallet -= drink.price
    @units_consumed += drink.alcohol_units
  end

  # def buy_drink(drink, pub)
  #   @wallet -= drink.price
  #   pub.till += drink.price
  # end

end
