Rails.application.routes.draw do
  devise_for :users
  root 'items#index'
  resources :items, only: [:new, :create, :show]
  resources :users, only: :show do
    collection do
      get 'logout'
      get 'card'
    end
  end


end
