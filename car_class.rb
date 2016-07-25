class Car

  attr_reader(:name, :speed, :fuel_level)

  def initialize(name, engine)
    @name = name
    @engine = engine
    @fuel_level = 100
    @speed = 0
  end

  def accelerate()
    @fuel_level -= @engine.fuel_consumption
    @speed += @engine.acceleration
  end

  def brake()
    @speed -=10
    @speed = 0 if @speed < 0
  end 

 

  
end