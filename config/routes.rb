Rails.application.routes.draw do
  get 'users/index'
  get 'users/show'
  devise_for :users
  resources :shops do
    resources :reviews, except: :index
  end
  root 'shops#index'
  resources :messages, :only => [:create]
  resources :rooms, :only => [:create, :show, :index]
  resources :users, only: :show
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
