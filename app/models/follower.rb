class Follower
    @@all = []

    def self.all
        @@all
    end

    def self.of_a_certain_age(age)
        self.all.select { |follower| follower.age >= age }
    end

    attr_accessor :age, :life_motto, :cults
    attr_reader :name

    def initialize(name, age, life_motto)
        @name = name
        @age = age
        @life_motto = life_motto
        @cults = []
        save
    end

    def save
        @@all << self
    end

    def join_cult(cult)
        self.cults << cult
    end
end