Rails.application.routes.draw do
  resources :meetings
  get 'users/show'
  devise_for :users
  root 'homes#index'
  resources :users, only: :show
  resources :homes, only: :index do
    collection do
      get :about 
    end
  end
  resources :menus, only: :index do
    resources :exercises, only: :show do
      collection do
        get :exercise_index
      end
    end
  end
end
