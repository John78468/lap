Rails.application.routes.draw do
  get 'static_pages/index'
  get 'static_pages/secret'
  get 'static_pages/team'
  get 'static_pages/contact'
  
  devise_for :users
  resources :cities
  resources :gossips

  #resources :static_pages
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
