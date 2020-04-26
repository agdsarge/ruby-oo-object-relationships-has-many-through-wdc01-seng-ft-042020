class Meal
    @@all = []
    attr_accessor :waiter, :customer, :total, :tip
    def initialize(w, c, to, tip)
        @waiter, @customer, @total, @tip = w, c, to, tip
        @@all << self
    end

    def self.all
        @@all
    end
end
