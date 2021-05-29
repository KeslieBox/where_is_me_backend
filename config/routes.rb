Rails.application.routes.draw do
  resources :interests
  resources :looking_fors
  resources :orientations
  resources :pronouns
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
