class Lifter
  attr_reader :name, :lift_total

  @@all = []

  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total
    @@all << self
  end

  def self.all
    @@all 
  end 


  def total_cost_of_memberships
    Membership.all.select do | membership |
      membership.lifter == self 
    end.reduce(0) { | memo, memberships | memo += memberships.cost}
  end 






end
