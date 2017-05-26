require 'pry'

class System
  attr_accessor :bodies
  @@bodies = []

  def add(body_name)
    @@bodies << body_name
  end

  def total_mass
    @@bodie.each do |body|
      total_mass += body.mass
    end
    total_mass
  end

  def self.all
    @@bodies
  end
end


class Body
  attr_accessor :name, :mass
  def initialize(name, mass)
    @name = name
    @mass = mass
  end
end


class Planets < Body
  attr_accessor :day, :year
  def initialize(name, mass, day, year)
    @day = day
    @year = year
    super(name, mass)
  end
end

class Star < Body
  attr_accessor :type
  def initialize(name, mass, type)
    @type = type
    super(name, mass)
  end
end

class Moon < Body
  attr_accessor :month, :planet
  def initialize(name, mass, month, planet)
    @month = month
    @planet = planet
    super(name, mass)
  end
end

sol = System.new

earth = Planets.new("Earth", 5972e10**24, 24, 365)
sol.add(earth)
puts System.all

puts "============================================"

mars = Planets.new("Mars", 6.39e10**23, 24, 687)
sol.add(mars)
puts System.all

puts "========================================="

sun = Star.new("Sol", 1.989e10**30, "G-Type")
sol.add(sun)
puts System.all

puts "============================================"

luna = Moon.new("Luna", 7.348e10**22, 29, "Earth")
sol.add(luna)
puts System.all

puts "==========================================="

phobos = Moon.new("Phobos", 1.066e10**16, 0.319, "Mars")
sol.add(phobos)
puts System.all
