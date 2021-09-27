Rails.application.routes.draw do
  resources :players
  resources :rounds
  resources :bets

  root to: 'rounds#index'

end
