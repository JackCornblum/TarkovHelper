Rails.application.routes.draw do
  resources :weapons, only: [:index]
  resources :dealers, only: [:index, :show]
  resources :users, only: [:create]

  get "/recoil_build/:id", to: "weapons#recoil_build"
  get "/ergonomics_build/:id", to: "weapons#ergonomics_build"
  get "/dealer_items/:id", to: "dealers#dealer_items"
  get "/weapon_items/:id", to: "weapons#weapon_items"
  post "/login", to: "sessions#create"
  get "/me", to: "sessions#show"
  get '/logout', to: "sessions#destroy"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
