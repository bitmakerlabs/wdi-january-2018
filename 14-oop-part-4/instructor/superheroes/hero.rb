require './powers.rb'

class Hero

  MAX_HEALTH = 100
  DEFAULT_POWER = 10
  DEFAULT_HEALING_FACTOR = 10
  DEFAULT_SPEED = 0
  DEFAULT_ALTITUDE = 0

  def initialize(name)
    @name = name

    @health         = MAX_HEALTH
    @power          = DEFAULT_POWER
    @healing_factor = DEFAULT_HEALING_FACTOR
    @speed          = DEFAULT_SPEED
    @altitude       = DEFAULT_ALTITUDE
  end

  def name
    @name
  end

  def health
    @health
  end

  def power
    @power
  end

  def speed
    @speed
  end

  def altitude
    @altitude
  end

  def conscious?
    @health > 0
  end

  def hit(opponent)
    if conscious? &&
      @speed >= opponent.speed &&
      @altitude >= opponent.altitude

      opponent.take_hit(@power)
    end
  end

  def take_hit(damage)
    @health -= damage
    @health = 0 if @health < 0
  end

  def rest
    @health += @healing_factor
    @health = MAX_HEALTH if @health > MAX_HEALTH
  end

end

class Kryptonian < Hero
  include Flight
  include Speed
  include Strength
end

class BatPerson < Hero
  include MartialArts
  include Genius
  include Rich
end

class XWeapon < Hero
  include MartialArts
  include Claws
  include Regeneration
end

class Speedster < Hero
  include Speed
  include Regeneration
end

class Amazonian < Hero
  include Flight
  include MartialArts
end

class IronPerson < Hero
  include Flight
  include Genius
  include Rich
end
