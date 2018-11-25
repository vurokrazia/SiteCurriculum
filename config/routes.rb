Rails.application.routes.draw do
  resources :tools
  resources :skills
  resources :experiences
  resources :curriculums
  resources :hastools
  devise_for :users
  get 'home/index'
  get 'home/articles'
  get 'home/categories'
  get 'home/index'
  root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
