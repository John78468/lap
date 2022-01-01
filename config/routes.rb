Rails.application.routes.draw do
  get 'static_pages/index'
  get 'static_pages/secret'
  get 'static_pages/team'
  get 'static_pages/contact'
  get 'gossips/show'
  get 'gossips/index'
  get 'gossips/new'
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
