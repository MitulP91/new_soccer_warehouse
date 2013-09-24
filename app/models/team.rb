class Team < ActiveRecord::Base
  attr_accessible :name, :country

  has_many :players
end
