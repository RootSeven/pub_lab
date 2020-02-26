class Customer

attr_reader :name
attr_accessor :wallet

  def initialize(name, wallet)
    @name = name
    @wallet = wallet
  end

  def buy_drink(drink, pub)
    @wallet -= drink.price
    pub.till += drink.price
  end

end
