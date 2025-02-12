require 'rspec'
require './lib/player'

RSpec.describe Player do
  xit 'exists' do
    player = Player.new("Michael Palledorous" , 1000000, 36)

    expect(player).to be_a Player
  end

  xit 'has a first name' do
    player = Player.new("Michael Palledorous" , 1000000, 36)

    expect(player.first_name).to eq("Michael")
  end

  xit 'has a last name' do
    player = Player.new("Michael Palledorous" , 1000000, 36)

    expect(player.last_name).to eq("Palledorous")
  end

  xit 'has a monthly cost' do
    player = Player.new("Michael Palledorous" , 1000000, 36)

    expect(player.monthly_cost).to eq(1000000)
  end

  xit 'has a contract length' do
    player = Player.new("Michael Palledorous" , 1000000, 36)

    expect(player.contract_length).to eq(36)
  end

  xit 'has a total cost' do
    player = Player.new("Michael Palledorous" , 1000000, 36)

    expect(player.total_cost).to eq(36000000)
  end
end
