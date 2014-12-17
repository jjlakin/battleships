# require 'byebug'

class Board


	attr_reader :table
	attr_writer :table

	DEFAULT_SIZE = 10

	def initialize(cell, size: size = DEFAULT_SIZE)
		@table = []
		(0...size).each { |c| @table[c] = Array.new(size) {Cell.new} }
	end

  def load_ship(ship: ship,location: location)

	  x1 = location[0]
	  y1 = location[1]
		x2 = location[2]
		y2 = location[3]
# byebug
		if x1 == x2
	  	(y1..y2).each {|y| @table[x1][y].load(ship) }
		elsif y1 == y2
			(x1..x2).each {|x| @table[x][y1].load(ship) }
		else
			raise "stupid coordinates"
		end


  end  

  def load_ship_in(ship)
		
  end
	

end


