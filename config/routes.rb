SoccerWarehouse::Application.routes.draw do
  resources :teams do
    resources :players
  end

  root :to => 'teams#index'
end

#     team_players GET    /teams/:team_id/players(.:format)          players#index
#                  POST   /teams/:team_id/players(.:format)          players#create
#  new_team_player GET    /teams/:team_id/players/new(.:format)      players#new
# edit_team_player GET    /teams/:team_id/players/:id/edit(.:format) players#edit
#      team_player GET    /teams/:team_id/players/:id(.:format)      players#show
#                  PUT    /teams/:team_id/players/:id(.:format)      players#update
#                  DELETE /teams/:team_id/players/:id(.:format)      players#destroy
#            teams GET    /teams(.:format)                           teams#index
#                  POST   /teams(.:format)                           teams#create
#         new_team GET    /teams/new(.:format)                       teams#new
#        edit_team GET    /teams/:id/edit(.:format)                  teams#edit
#             team GET    /teams/:id(.:format)                       teams#show
#                  PUT    /teams/:id(.:format)                       teams#update
#                  DELETE /teams/:id(.:format)                       teams#destroy