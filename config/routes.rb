Rails.application.routes.draw do

  resources :artists do
    resources :songs, only: [:index, :show]
  end

  namespace :admin do 
    resources :preferences
  end

  resources :songs

end

# scope '/admin', module: 'admin' do
#   resources :stats, only: [:index]
# end