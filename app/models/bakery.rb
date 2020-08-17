class Bakery
    attr_accessor :name
    @@all = Array.new
    def initialize name
        @name = name
        @@all << self
    end

    def ingredients
        ingr = Array.new
        Dessert.all.select do |desserts|
            if desserts.bakery == self
                ingr << desserts.ingredient
            end
        end
        ingr
    end

    def desserts
        Dessert.all.select do |dsrts| 
            if dsrts.bakery == self
                dsrts
            end
        end
    end

    def average_calories
    end

    def shopping_list
    end

    def self.all
        @@all
    end
end 