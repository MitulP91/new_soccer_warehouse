class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
    	t.string :name, :limit => 100
    	t.integer :age
    	t.string :nationality, :limit => 150
    	t.belongs_to :team
      t.timestamps
    end
  end
end
