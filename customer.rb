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

  def buy_food(food)
      @wallet -= food.price
      if food.rejuvenation_level > @units_consumed
        return @units_consumed = 0
      else
        return @units_consumed -= food.rejuvenation_level
      end
  end



end
