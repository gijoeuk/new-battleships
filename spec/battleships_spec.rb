require 'Battleships'

describe 'Battleships' do
  let( :battleships ){ Battleships.new }
  it 'initializes with an instance of Battleships' do
    expect(battleships).to be_instance_of(Battleships)
  end

  it 'allows player to see the current game state in 2d' do
    expect(battleships.view_board).to eq("..........\n..........\n..........\n..........\n..........\n..........\n..........\n..........\n..........\n..........\n")
  end

  it "initializes with a grid of 10x10 dots" do
    expect(battleships.board).to eq("..........\n..........\n..........\n..........\n..........\n..........\n..........\n..........\n..........\n..........\n")
  end

  it 'has a method to allow you to place a 3 cell ship horizontally' do
    expect(battleships.place_ship_horizontal(0)).to eq("OOO.......\n..........\n..........\n..........\n..........\n..........\n..........\n..........\n..........\n..........\n")
  end

  it 'prevents you from placing a horizontal ship outside grid' do
    expect(battleships.place_ship_horizontal(9)).to eq("Cannot place ship ouf of bounds. Try again")
  end

  it 'has a method to allow you to place a vertical ship' do
    expect(battleships.place_ship_vertical(0)).to eq("O.........\nO.........\nO.........\n..........\n..........\n..........\n..........\n..........\n..........\n..........\n")
  end

  it 'allows a player to attack the board' do
    battleships.attack(14)
    expect(battleships.board).to eq("..........\n...X......\n..........\n..........\n..........\n..........\n..........\n..........\n..........\n..........\n")
  end

  it 'lets player know if they hit a ship' do
    battleships.place_ship_horizontal(14)
    expect(battleships.attack(15)).to eq("HIT!!")
  end

end
