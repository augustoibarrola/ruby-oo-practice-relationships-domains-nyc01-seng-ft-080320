class Trips
    attr_accessor :listing, :guest
    @@all_trips = Array.new
    def initialize listing, guest
        @listing = listing
        @guest = guest
        @@all_trips << self
    end

    def self.all
        @@all_trips
    end
end