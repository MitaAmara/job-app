Rails.application.routes.draw do
  get 'admins/index'
  root 'homes#index'
  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'

  resources :works
  resources :users
  resources :sessions
end
