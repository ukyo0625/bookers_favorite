Rails.application.routes.draw do
  devise_for :users
  resources :books
  resources :users
  root :to  => 'home#top'
  root 'post_images#index'
  get 'home/about' => 'home#about'
  resources :users do
    member do
      get :followings
      get :followers
    end 
  end
  Rails.application.routes.draw do
  resources :relationships, only: [:create, :destroy]
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
