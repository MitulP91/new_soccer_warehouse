class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
    	t.string :name, :limit => 100
    	t.string :country, :limit => 150
      t.timestamps
    end
  end
end
