Rails.application.routes.draw do
  resources :users_statuses
  resources :users_politics
  resources :users_looking_fors
  resources :users_identities
  resources :users_interests
  resources :users_pronouns
  resources :categories
  resources :statuses
  resources :politics
  resources :interests
  resources :looking_fors
  resources :orientations
  resources :pronouns
  post '/login', to: 'users#login'
  resources :users 
 
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
