class Car

  @@default_colour = 'red'

  def initialize(owner)
    @owner  = owner
    @colour = @@default_colour
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

  def honk
    'Beep'
  end

end

# Objects     |   State                 | Behaviour
# ------------+-------------------------+------------------------
# Instances   | Instance Variables (@)  | Instance Methods (def name)
# Class       | Class Variables (@@)    | Class Methods (def self.name)
#
