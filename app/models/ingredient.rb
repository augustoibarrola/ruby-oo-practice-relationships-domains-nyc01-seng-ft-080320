class Ingredient
    attr_accessor :name, :calorie_count
    @@all = Array.new
    def initialize name, calorie_count=125.00
        @name = name
        @calorie_count = calorie_count
        @@all << self
    end

    def dessert
        Dessert.all.select do |x|
            if x.ingredient == self
                x
            end
        end
    end

    def bakeries
        bkr = Array.new
        Dessert.all.select do |x|
            if x.ingredient == self
                bkr << x.bakery
            end
        end
        bkr
    end

    def self.all
        @@all
    end

    def self.find_all_by_name(ingredient)
        @@all.select do |ingr| 
            if ingr.name.include?ingredient
                ingr
            end
        end
    end
end