require 'cell'
require 'ship'

describe 'cell' do

	let(:cell) {Cell.new}
  let(:ship) {Ship.new(1)}
		
	it 'should be able to be shot at' do
		
		cell.shoot_at
		expect(cell).to be_shot

	end


	it 'should store the object' do 
    cell.load(ship)
    expect(cell.ship).to eq(ship)
	end

	it 'should be able to be shot at' do
		
		cell.load(ship)
		cell.shoot_at
		expect(ship).not_to be_floating

	end




end