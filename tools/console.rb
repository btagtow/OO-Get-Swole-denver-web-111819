# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'


ben = Lifter.new("Ben", 15)
anna = Lifter.new("Anna The Dog", 0)
lola = Lifter.new("Lola The Dog", 32)
# test code goes here

twentyfour_hour = Gym.new("24 Hour Fitness", "Denver")
trails = Gym.new("Trails Rec Center", "Centennial")
gold_gym = Gym.new("Rich People Gym", "Cherry Hills")
bronze_gym = Gym.new("Average People Gym", "Aurora")

mem1 = Membership.new(40, anna, twentyfour_hour)
mem6 = Membership.new(40, lola, twentyfour_hour)
mem2 = Membership.new(20, anna, trails)
mem3 = Membership.new(800, ben, gold_gym)
mem4 = Membership.new(5, lola, bronze_gym)
mem5 = Membership.new(15, ben, twentyfour_hour)

# total_lift_totals = Lifter.all.reduce(0) { |memo, lifter| memo += lifter.lift_total }

total_lift_totals = Lifter.all.reduce(0) { | memo, lifter | memo += lifter.lift_total}

average_lift_totals = total_lift_totals / Lifter.all.length


binding.pry

puts "Gains!"
