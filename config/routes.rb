Rails.application.routes.draw do
    post '/users/join_game', to: 'users#join_game'
    resources :cards, only: [:index, :show]
    resources :decks, only: [:show, :update]
    resources :hands, only: [:show, :update]
    resources :matches, only: [:index, :show, :create, :update, :destroy]
    resources :players, only: [:index, :update, :show]
    resources :users, only: [:index, :show, :create, :update, :destroy]
    mount ActionCable.server => '/cable'
end
