Rails.application.routes.draw do

  namespace :admin do
    resources :preferences, only: [:index, :show, :new]
  end
  resources :songs

end
