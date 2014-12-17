require 'ship'

describe 'ship' do 

	let(:ship) {Ship.new(3)}

	it 'should have a length' do

		expect(ship.length).to eq(3)
	
	end

  it 'should recieve hit' do
  	
    expect(ship).to receive(:hit).and_return(2)
    ship.hit
 
  end  

	it 'should be floating' do
		
		expect(ship).to be_floating

	end

	it 'can introduce battleships' do
		
		expect(Ship.battleship.size).to eq(4)

	end

end


