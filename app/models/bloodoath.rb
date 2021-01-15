class BloodOath
    @@all = []

    def self.all
        @@all
    end

    def self.first_oath
        self.all.first.follower
    end

    attr_accessor :follower, :cult
    attr_reader :name, :date

    def initialize(name, follower, cult)
        @name = name
        @follower = follower
        @cult = cult
        @date = Time.now.to_s.split(" ")[0]
        save
    end

    def save
        @@all << self
    end

    def initiation_date
        @date
    end
end