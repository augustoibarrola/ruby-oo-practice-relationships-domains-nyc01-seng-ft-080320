class Guest
attr_accessor :name
@@all = Array.new
    def initialize name
        @name = name
        @@all << self
    end

    def listings
        list = Array.new
        Trips.all.select do |eachtrips|
            if eachtrips.guest == self
                list << eachtrips.listing
            end
        end
        list
    end

    def trips
        Trips.all.select do |trips|
            if trips.guest == self
                trips
            end
        end
    end

    def trip_count
      self.trips.count
    end

    def self.all
        @@all
    end

    # def self.pro_traveller
    # end

    def self.find_all_by_name(name)
        @@all.select do |x|
            if x.name == name
                x
            end
        end
    end
end