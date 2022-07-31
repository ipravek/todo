Rails.application.routes.draw do
  root to: 'home#index'
  namespace :api do
    get 'todo', to: "todolist#index"
    post 'register', to: "users#create"
    post 'login', to: "users#login"
  end
end
