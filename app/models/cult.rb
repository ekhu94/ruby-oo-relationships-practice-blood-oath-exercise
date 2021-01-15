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
end