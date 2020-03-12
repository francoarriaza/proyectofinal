Rails.application.routes.draw do
  get 'home/home'

  root to: 'home#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
