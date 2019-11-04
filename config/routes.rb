Rails.application.routes.draw do

  namespace :admin do
    resources :preferences
  end
  resources :artists do
    resources :songs, only: [:index, :show]
  end
  resources :songs

end

# Prefix Verb   URI Pattern                             Controller#Action
#     admin_preferences GET    /admin/preferences(.:format)            admin/preferences#index
#                       POST   /admin/preferences(.:format)            admin/preferences#create
#  new_admin_preference GET    /admin/preferences/new(.:format)        admin/preferences#new
# edit_admin_preference GET    /admin/preferences/:id/edit(.:format)   admin/preferences#edit
#      admin_preference GET    /admin/preferences/:id(.:format)        admin/preferences#show
#                       PATCH  /admin/preferences/:id(.:format)        admin/preferences#update
#                       PUT    /admin/preferences/:id(.:format)        admin/preferences#update
#                       DELETE /admin/preferences/:id(.:format)        admin/preferences#destroy
#          artist_songs GET    /artists/:artist_id/songs(.:format)     songs#index
#           artist_song GET    /artists/:artist_id/songs/:id(.:format) songs#show
#               artists GET    /artists(.:format)                      artists#index
#                       POST   /artists(.:format)                      artists#create
#            new_artist GET    /artists/new(.:format)                  artists#new
#           edit_artist GET    /artists/:id/edit(.:format)             artists#edit
#                artist GET    /artists/:id(.:format)                  artists#show
#                       PATCH  /artists/:id(.:format)                  artists#update
#                       PUT    /artists/:id(.:format)                  artists#update
#                       DELETE /artists/:id(.:format)                  artists#destroy
#                 songs GET    /songs(.:format)                        songs#index
#                       POST   /songs(.:format)                        songs#create
#              new_song GET    /songs/new(.:format)                    songs#new
#             edit_song GET    /songs/:id/edit(.:format)               songs#edit
#                  song GET    /songs/:id(.:format)                    songs#show
#                       PATCH  /songs/:id(.:format)                    songs#update
#                       PUT    /songs/:id(.:format)                    songs#update
#                       DELETE /songs/:id(.:format)                    songs#destroy
