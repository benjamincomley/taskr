Rails.application.routes.draw do

  devise_for :requesters
  root controller: :home, action: :index
  resources :home, only: [:index]

end
