class Engine

  attr_reader(:name, :acceleration, :fuel_consumption)

  def initialize(name, acceleration, fuel_consumption)
    @name = name
    @acceleration = acceleration
    @fuel_consumption = fuel_consumption
  end

end