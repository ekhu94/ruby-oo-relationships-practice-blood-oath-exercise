require_relative '../config/environment.rb'
require_relative '../app/models/cult'
require_relative '../app/models/follower'
require_relative '../app/models/bloodoath'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# cult1 = Cult.new("cult1", "starbucks", 1999, "duuuck")
# cult2 = Cult.new("cult2", "starbucks", 1999, "dddduuuuuuuck")
# follower1 = Follower.new("bob", 54, "cats")
# follower2 = Follower.new("bobsads", 2, "cats")
# follower3 = Follower.new("bobs", 54, "cats")
# follower4 = Follower.new("bobsafwqf", 59, "cats")
# follower5 = Follower.new("bobasfas", 40, "catsssssssssss")
# bo1 = BloodOath.new("bo1", follower5, cult1)
# bo2 = BloodOath.new("bo1", follower2, cult1)
# follower1.join_cult(cult1)
# follower1.join_cult(cult2)
# follower3.join_cult(cult1)
# follower4.join_cult(cult1)
# follower5.join_cult(cult1)
# so they will be available to test and play around with in your console

binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits