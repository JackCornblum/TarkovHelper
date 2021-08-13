Rails.application.routes.draw do
  resources :weapons, only: [:index]
  resources :dealers, only: [:index]

  get "/recoil/:id", to: "weapons#recoil_build"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
