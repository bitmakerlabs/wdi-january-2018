class Car

  @@default_colour = 'red'

  def initialize(owner, size = 'M')
    @owner  = owner
    @colour = @@default_colour
    @broken = false
    @size   = size
  end

  def self.default_colour
    @@default_colour
  end

  def self.default_colour=(default_colour)
    @@default_colour = default_colour
  end

  def colour
    @colour
  end

  def colour=(colour)
    @colour = colour
  end

  def broken?
    @broken
  end

  def crash(other_car = nil)
    @broken = true

    if other_car
      other_car.crash
    end
  end

  def honk
    'Beep'
  end

end

# Objects     |   State                 | Behaviour
# ------------+-------------------------+------------------------
# Instances   | Instance Variables (@)  | Instance Methods (def name)
# Class       | Class Variables (@@)    | Class Methods (def self.name)
#
