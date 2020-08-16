class Listing
    attr_accessor :type_of_listing, :city
    @@all_listings = Array.new
    def initialize type_of_listing, city
        @type_of_listing = type_of_listing
        @city = city
        @@all_listings << self
    end

    def guests
        guests = Array.new
        Trips.all.select do |x|
            if x.listing == self
                guests << x.guest
            end
        end
        guests
    end

    def trips
        Trips.all.select do |x|
            if x.listing == self
                x
            end
        end
    end

    def trip_count
        self.trips.count
    end

    def self.all
        @@all_listings
    end

    def self.find_all_by_city(city)
        Listing.all.select do |x|
            if x.city == city
                x
            end
        end
    end

    # def self.most_popular
    #     Listing.all.map &:count
    # end
end