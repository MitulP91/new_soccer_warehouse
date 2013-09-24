require 'spec_helper'

describe Team do
  before :each do
  	@valid_name = "Chelsea FC"
  	@valid_country = "England"
  	@team = Team.new(name: @valid_name, country: @valid_country)
  	@player = Player.new(name: "Juan Mata", age: 25, nationality: "Spain")
  	@team.players << @player
  end

  describe '#name' do
  	it "should return team name" do
  		@team.name.should eq(@valid_name)
  	end
  end

  describe '#country' do
  	it "should return team country" do
  		@team.country.should eq(@valid_country)
  	end
  end

  describe '#players' do
  	it "should return an array" do
  		@team.players.class.should eq(Array)
  	end

  	it "should return object Player if not empty" do
  		@team.players.first.class.should eq(Player)
  	end
  end
end
