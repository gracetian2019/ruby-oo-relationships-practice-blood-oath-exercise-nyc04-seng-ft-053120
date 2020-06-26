class Cult
    @@all = []
    attr_accessor  :slogan, :cult_population 
    attr_reader  :name, :location, :founding_year
    def initialize(name,location,founding_year,slogan)
        @name = name
        @location = location
        @founding_year = founding_year
        @slogan = slogan
        self.class.all << self
    end
    def self.all
        @@all
    end
    def recruit_follower(follower)
        @followers << follower
    end
    def cult_population
        followers.count 
    end
    def self.find_by_name(name)
        self.all.select {|cult|cult.name == name}
    end
    def self.find_by_location(location)
        self.all.find{|cult|cult.location == location}
    end
    def self.find_by_founding_year(founding_year)
        self.all.find{|cult|cult.founding_year == founding_year}
    end
    def followers
        Bloodoath.all.select{|oath| oath.cult == self}
    end
    def average_age
    cult_average_age = 0
    followers.each {|oath| cult_average_age += oath.follower.age}
    (cult_average_age/self.cult_population).to_f
    end
    def my_followers_mottos
     followers.map {|oath| oath.follower.life_motto}
    end
    def self.least_popular
       x = Cult.all.sort_by{|cult|cult.cult_population}
        return x[0]  
    end
    def self.most_common_location
        y = {}
        self.all.each do |cult|
            if y[cult.location]
              y[cult.location] +=1
            else  
              y[cult.location] = 1
            end
        end
        y.sort_by{|key,value|value}.last[0]
    end
end