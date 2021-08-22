Rails.application.routes.draw do
  mount ActionCable.server => '/cable'
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'tweets#index'
  resources :tweets
  get 'hello/index' => 'hello#index'
  get 'hello/link' => 'hello#link'
  resources :groups do
    resources :comments
  end
  
  resources :rooms
end
