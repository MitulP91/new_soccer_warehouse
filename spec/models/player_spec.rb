require 'spec_helper'

describe Player do
	before :each do
		@valid_name = "Juan Mata"
		@valid_age = 25
		@valid_nationality = "Spain"
		@player = Player.new(name: @valid_name, age: @valid_age, nationality: @valid_nationality)
	end

  describe '#name' do
  	it "should return valid player name" do
  		@player.name.should eq(@valid_name)
  	end
  end

  describe '#age' do
  	it "should return valid player age" do
  		@player.age.should eq(@valid_age)
  	end
  end

  describe '#nationality' do
  	it "should return valid player nationality" do
  		@player.nationality.should eq(@valid_nationality)
  	end
  end
end
