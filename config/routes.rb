Rails.application.routes.draw do

  resources :artists do
    resources :songs, only: [:index, :show]
  end

  namespace :admin do
    resources :preferences do
      resources :songs, only: [:new, :create]
      resources :artists, only: [:new, :create]
    end
  end

  resources :songs

end
