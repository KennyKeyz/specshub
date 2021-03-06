Rails.application.routes.draw do
  resources :appointments
  resources :bookings
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users, controllers: {sessions:"sessions"}, path: 'u', path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'register' }
  resources :users

  

  get 'contact', to: 'static_pages#contact'

  get 'about-us', to: 'static_pages#about'

  get 'home', to: 'static_pages#home'


  root to: 'static_pages#home'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
