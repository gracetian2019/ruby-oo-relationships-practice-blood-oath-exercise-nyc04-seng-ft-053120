class Follower
  attr_accessor :name, :age, :life_motto
  @@all = []
  def initialize(name, age, life_motto)
    @name = name
    @age = age
    @life_motto = life_motto
    @cults = []
    self.class.all << self
  end
  def self.all
    @@all
  end
  def cults
    Bloodoath.all.select{|oath|oath.follower == self}
  end
  def join_cult(cult,initiation_date)
    Bloodoath.new(self, cult, initiation_date)
  end

end