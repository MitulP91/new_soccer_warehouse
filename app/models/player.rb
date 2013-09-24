class Player < ActiveRecord::Base
  attr_accessible :name, :age, :nationality

  belongs_to :team
end
