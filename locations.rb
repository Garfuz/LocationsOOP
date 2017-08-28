class Location

  attr_reader :name

  def initialize(name)
    @name = name
  end

end

class Trip

  @@destinations = []

  def self.add(location)
    @@destinations << location
  end

  def self.list_iterate
    puts "Begin trip."
    @@destinations.each_with_index do |city, index|
      next_city = @@destinations[index+1]

      puts "Travelled from #{city.name} to #{next_city.name}." unless next_city.nil?

    end

  end
end

Trip.add(Location.new("Toronto"))
Trip.add(Location.new("Halifax"))
Trip.add(Location.new("Montreal"))
Trip.add(Location.new("Calgary"))
Trip.add(Location.new("Vancouver"))
Trip.add(Location.new("Rome"))
Trip.add(Location.new("Pisa"))

Trip.list_iterate
