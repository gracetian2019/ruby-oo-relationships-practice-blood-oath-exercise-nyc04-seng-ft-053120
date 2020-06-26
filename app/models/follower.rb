class Follower
  attr_accessor :name, :age, :life_motto
  @@all = []
  def initialize(name, age, life_motto)
    @name = name
    @age = age
    @life_motto = life_motto
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
  def my_cults_slogans
    # binding.pry
     cults.each do |oath|
        puts oath.cult.slogan
     end
  end
  def self.most_active
     self.all.sort_by{|follower| follower.cults.count}.last
  end
  def self.top_ten
    self.all.sort_by{|follower| follower.cults.count}[1..10]
  end
end