class Cult
    @@all = []

    def self.all
        @@all
    end

    def self.find_by_name(name)
        self.all.find { |cult| cult.name == name }
    end

    def self.find_by_location(location)
        self.all.filter { |cult| cult.location == location }
    end

    def self.find_by_founding_year(year)
        self.all.filter { |cult| cult.founding_year == year }
    end

    def self.least_popular
        self.all.reduce { |min, val| min.cult_population > val.cult_population ? val : min }
    end

    def self.most_common_location
        locations = Hash.new(0)
        self.all.each { |cult| locations[cult.location] += 1 }
        locations.max_by { |k, v| v }[0]
    end

    attr_accessor :location, :slogan
    attr_reader :name, :founding_year

    def initialize(name, location, founding_year, slogan)
        @name = name
        @location = location
        @founding_year = founding_year
        @slogan = slogan
        save
    end

    def save
        @@all << self
    end

    def recuit_follower(follower)
        follower.cults << self
    end

    def cult_population
        followers = Follower.all.select { |follower| follower.cults.include?(self) }
        followers.length
    end

    def cult_followers
        Follower.all.select { |follower| follower.cults.include?(self) }
    end

    def average_age
        followers_ages = cult_followers.map { |follower| follower.age }
        total = followers_ages.reduce { |sum, val| sum += val }
        total / cult_population.to_f
    end

    def my_followers_mottos
        cult_followers.each { |follower| puts follower.life_motto }
    end
end