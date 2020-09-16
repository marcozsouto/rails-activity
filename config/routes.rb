Rails.application.routes.draw do
  resources :complaints
  resources :users
  root 'home#index'
  
  resources :users
  resources :sessions, only: [:new, :create, :destroy]
  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'
  get 'new', to:'complaints#new', as: 'newcomplaint'
  get 'search', to:'home#search', as: 'search'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
