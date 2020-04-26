require 'pry'
class Customer
    @@all = []
    attr_accessor :name, :age
    def initialize(name, age)
        @name, @age = name, age
        @@all << self
    end

    def new_meal(wtr_obj, total, tip)
        Meal.new(wtr_obj, self, total, tip)
    end

    def meals
        Meal.all.select {|ml| ml.customer == self}
    end

    def waiters
        meals.map {|ml| ml.waiter}
    end

    def self.all
        @@all
    end
end
