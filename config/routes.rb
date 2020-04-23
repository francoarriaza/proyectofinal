Rails.application.routes.draw do
  resources :estudia
  resources :trabajas
  resources :programas
  resources :aprendes
  resources :forums do
    resources :comments, only: [:create, :destroy]
  end
  
  devise_for :users
  get 'home/home'

  root to: 'home#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
