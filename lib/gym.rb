class Gym
  attr_reader :name, :location

  @@all = []

  def initialize(name, location)
    @name = name
    @location = location
    @@all << self
  end

  def self.all
    @@all
  end 

  def all_memberships
    Membership.all.select do | membership |
      membership.gym == self
    end 
  end 
  def all_members 
    all_memberships.map do |membership|
      membership.lifter
    end
  end
  def all_names 
    all_members.map do | member |
      member.name 
    end 
  end 

  def lift_totals
    all_members.reduce(0) do | memo, member |
      memo += member.lift_total
    end
  end






    # - Get a list of all gyms

    # - Get a list of all memberships at a specific gym
  
    # - Get a list of all the lifters that have a membership to a specific gym
  
    # - Get a list of the names of all lifters that have a membership to that gym
  
    # - Get the combined lift total of every lifter has a membership to that gym


end
