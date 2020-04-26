class Waiter
    @@all = []
    attr_accessor :name, :experience
    def initialize(name, exp)
        @name, @experience = name, exp
        @@all << self
    end

    def new_meal(cust, total, tip)
        Meal.new(self, cust, total, tip)
    end

    def meals
        Meal.all.select {|ml| ml.waiter == self}
    end

    def best_tipper
        a = meals.reduce(Meal.new(nil,nil,0,0)) do |memo, ml|
            ml.tip > memo.tip ? memo = ml : memo
        end
        a.customer
    end

    def self.all
        @@all
    end
end
