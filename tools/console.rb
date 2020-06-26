require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
cult1 = Cult.new("flatiron","brooklyn",2000,"we are the best")
cult2 = Cult.new("nyc", "ny", 1800, "all good")
follower1 = Follower.new("otha", 25, "go for it")
follower2 = Follower.new("Ian", 26, "go go go")
follower3 = Follower.new("Ethan", 21, "every day is good day")
follower1.join_cult(cult1,"2020-06-26")
follower2.join_cult(cult1,"2020-06-26")
follower3.join_cult(cult1,"2020-06-26")
# binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits