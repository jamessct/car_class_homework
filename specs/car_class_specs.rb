require('minitest/autorun')
require('minitest/rg')
require_relative('../car_class')
require_relative('../engine')

class CarTest < MiniTest::Test

  def setup()
    @turbo = Engine.new("turbo", 25, 10)
    @normal = Engine.new("normal", 10, 5)
    @mercedes = Car.new("Mercedes", @normal)
    @mini = Car.new("Mini", @turbo)
  end

  def test_engine_has_name()
    assert_equal("turbo", @turbo.name)
  end

  def test_car_has_name()
    assert_equal("Mercedes", @mercedes.name)
  end

  def test_car_can_accelerate()
    @mercedes.accelerate
    assert_equal(10, @mercedes.speed)
    assert_equal(95, @mercedes.fuel_level)
  end

  def test_car_can_brake()
    @mercedes.brake
    assert_equal(0, @mercedes.speed)
  end

  def test_engine_acceleration()
    assert_equal(25, @turbo.acceleration)
    assert_equal(10, @turbo.fuel_consumption)
  end

end
