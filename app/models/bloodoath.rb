class BloodOath
    @@all = []

    def self.all
        @@all
    end

    def initiation_date(year, month, day)
        "#{year}-#{month}-#{day}"
    end
end