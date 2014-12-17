class Ship

  attr_reader :length, :allowed_hits

  SHIPS = {battleship: 4, submarine: 3, destroyer: 3, aircraft_carrier: 5, patrol_boat: 2 }

  def initialize(length = 3)
    @length = length
    @allowed_hits = length
  end

  def size
		@length = length
  end

  def hit
		@allowed_hits -= 1
  end

  def floating?
    @allowed_hits > 0
  end

  def self.battleship
  	new(4)
  end

	def self.method_missing name 
		Ship.SHIPS[name].size if SHIPS[name]
	end

end