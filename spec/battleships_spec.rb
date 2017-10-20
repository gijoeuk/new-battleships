require 'Battleships'

describe 'Battleships' do
  it 'initializes with an instance of Battleships' do
      battleships = Battleships.new
      expect(battleships).to be_instance_of(Battleships)
    end

  it "has grid method to create grid of 10x10 dots" do
    battleships = Battleships.new
    expect(battleships.create_grid).to eq("..........\n..........\n..........\n..........\n..........\n..........\n..........\n..........\n..........")
  end

  it 'has a method to allow you to place a 3 cell ship horizontally' do
    battleships = Battleships.new
    battleships.create_grid
    expect(battleships.place_ship_horizontal(0)).to eq("OOO.......\n..........\n..........\n..........\n..........\n..........\n..........\n..........\n..........")
  end

  it 'prevents you from placing a horizontal ship outside grid' do
    battleships = Battleships.new
    battleships.create_grid
    expect(battleships.place_ship_horizontal(9)).to eq("Cannot place ship ouf of bounds. Try again")
  end
  
  it 'has a method to allow you to place a vertical ship' do
    battleships = Battleships.new
    battleships.create_grid
    expect(battleships.place_ship_vertical(0)).to eq("O.........\nO.........\nO.........\n..........\n..........\n..........\n..........\n..........\n..........")
  end
end
