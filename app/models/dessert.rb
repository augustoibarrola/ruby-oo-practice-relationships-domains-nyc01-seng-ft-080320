class Dessert
    attr_accessor :name, :ingredient, :bakery
    @@all = Array.new
    def initialize name, ingredient, bakery
        @name = name
        @ingredient = ingredient
        @bakery = bakery
        @@all << self
    end

    def calories
    end

    def self.all
        @@all
    end
end