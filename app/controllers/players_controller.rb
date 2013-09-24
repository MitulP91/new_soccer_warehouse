class PlayersController < ApplicationController
	def index
		team_id = params[:team_id]
		team = Team.find(team_id)
		@players = team.players
	end

	def new
		@team_id = params[:team_id]
		@player = Player.new
	end

	def create
		team = Team.find(params[:team_id])
		player = Player.new(params[:player])
		team.players << player
		redirect_to '/teams'
	end

	def show
		team_id = params[:team_id]
		id = params[:id]
		team = Team.find(team_id)
		@player = team.players.find(id)
	end

	def edit
		@team_id = params[:team_id]
		@id = params[:id]

		team = Team.find(@team_id)
		@player = team.players.find(@id)
	end

	def update
		team_id = params[:team_id]
		id = params[:id]

		team = Team.find(team_id)
		player = team.players.find(id)
		player.update_attributes(params[:player])
		redirect_to "/teams/#{team.id}/players/#{player.id}"
	end
end