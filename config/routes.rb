Rails.application.routes.draw do
  root 'homes#index'
  resources :homes, only: :index
  resources :menus, only: :index
end
