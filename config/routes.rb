Rails.application.routes.draw do
  root to: 'home#index'
  
  devise_for :users, controllers: { sessions: 'api/users/sessions', registrations: 'api/users/registrations' }
  
  namespace :api do
    resources :todolist
  end
end
