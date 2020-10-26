Rails.application.routes.draw do
  devise_for :users
  root 'homes#index'
  resources :homes, only: :index do
    collection do
      get :about 
    end
  end
  resources :menus, only: :index
  resources :exercises, only: :show
end
