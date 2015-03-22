class Car
  def initialize(make,kind,year,drivers_name)
    @make = make
    @kind = kind
    @year = year
    @drivers_name = drivers_name
  end


  def change_driver(new_driver)
    @drivers_name = new_driver
    puts 'Theres a new driver in the seat: ' + new_driver.to_s
  end

  def honk ()
    puts "HONK"
  end
end

my_car = Car.new('Audi','A4 Quattro',1998,'Kyle')

my_car.honk()

my_car.change_driver('Mario')
