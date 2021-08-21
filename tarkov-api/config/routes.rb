Rails.application.routes.draw do
  resources :weapons, only: [:index]
  resources :dealers, only: [:index, :show]
  resources :users, only: [:create]
  resources :tasks, only: [:index]
  

  get "/recoil_build/:id", to: "weapons#recoil_build"
  get "/ergonomics_build/:id", to: "weapons#ergonomics_build"
  get "/dealer_items/:id", to: "dealers#dealer_items"
  get "/weapon_items/:id", to: "weapons#weapon_items"
  post "/login", to: "sessions#create"
  get "/me", to: "sessions#show"
  get '/logout', to: "sessions#destroy"
  post 'save_loadout/:id', to: "users#save_loadout"
  get '/my_guns', to: 'users#my_guns'
  get '/dealer_images', to: "dealers#images"
  delete '/saved_gun/:id', to: 'users#destroy_saved_gun'
  post '/completed_task', to: "users#complete_task"
  post '/in_progress_task', to: "users#in_progress_task"
  get '/my_completed_tasks', to: "users#my_completed_tasks"
  get 'my_in_progress_tasks', to: "users#my_in_progress_tasks"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
