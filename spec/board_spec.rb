require 'ship'
require 'cell'
require 'board'

describe 'board' do


let(:cell) {Cell.new}	
let(:board) {Board.new(Cell)}	
let(:fake_ship){double(:ghost_ship) }

	it 'should have a board' do
		
		expect(board.table).not_to eq(nil) 

	end


  it 'should load a ship to the board' do

  end


end
