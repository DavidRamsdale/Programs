require "geocoder"
class Dog
    attr_accessor :name, :age, :location, :total_distance
      def initialize(name, age, location)
          @name = name
          @age = age
          @location = location
          @total_distance = 0
          @times_walked = 0
      end
  
      def walk(location, distance)
        @times_walked += 1
        @distance = distance
        @total_distance += distance
        @time = Time.now.strftime("%I:%M:%p")
        self
      end
  
      def walk_count
        puts "I have been on #{@times_walked} walks today to #{location} with a distance of #{@distance} kilometres at this time #{@time}"
      end
  
      def total
        puts " #{@total_distance}"
      end

      def location_geo
        results = Geocoder.search("#{@location}")
        puts results.first.coordinates
      end
  
  
  end
  
  doggo = Dog.new("Buster", 2, "Brisbane")
  doggo.walk("Brisbane", 20).location_geo
  
  
    
  