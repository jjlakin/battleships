require 'ship'
require 'cell'
require 'board'

describe 'board' do


let(:cell) {Cell.new}	
let(:board) {Board.new(Cell,size: 10)}	
let(:ship) {Ship.new(3)}
let(:fake_ship){double(:ghost_ship, hit: true) }

	it 'should have a board' do
		
		expect(board.table).not_to eq(nil) 

	end


  it 'should load a ship to the board' do
	location = [1, 1, 3, 1]
	board.load_ship(ship: fake_ship, location: location)
	expect(board.table[1][1]).not_to be_shot

  end

  it 'should allow targeted empty cells to be hit' do
	
	board.table[1][1].shoot_at
	expect(board.table[1][1]).to be_shot

  end

  it 'should load a ship to the board' do
	location = [1, 1, 3, 1]
	board.load_ship(ship: ship, location: location)
	board.table[1][1].shoot_at
	expect(board.table[1][1]).to be_shot

  end


end
