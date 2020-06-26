class Bloodoath
    attr_reader :follower, :cult, :initiation_date
    @@all = []
    def initialize(follower, cult, initiation_date)
        @follower = follower
        @cult = cult
        @initiation_date = initiation_date
        self.class.all << self
    end
    def self.all
        @@all
    end
end