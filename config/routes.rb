Rails.application.routes.draw do
  devise_for :users
  root to: 'homes#top'
  get 'homes/about', as: :about
  resources :books, expect: [:new]
  resources :users, expect: [:new]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
