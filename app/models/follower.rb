class Follower
    @@all = []

    def self.all
        @@all
    end

    def self.of_a_certain_age(age)
        self.all.select { |follower| follower.age >= age }
    end

    def self.most_active
        self.all.max { |a, b| a.cults.length <=> b.cults.length }
    end

    def self.top_ten
        self.all.max(10) { |a, b| a.cults.length <=> b.cults.length }
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
        BloodOath.new(@name, self, cult)
    end

    def my_cults_slogans
        self.cults.each { |cult| puts cult.slogan }
    end
end