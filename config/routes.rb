Rails.application.routes.draw do
  devise_for :users
  resources :shops do
    resources :reviews, only: [ :new, :create, :show] 
    collection do
      get 'reviews_search'
      post  'reviews_search', to: 'shops#reviews_search'
      get 'shops_search'
      post  'shops_search', to: 'shops#shops_search'
      get  'shops_edit_search', to: 'shops#shops_edit_search'
    end
  end
  resources :reviews, only: :index
  resources :womans, only: [:index, :create, :edit, :update] do
    collection do
      get 'search'
    end
  end

  root 'shops#index'
  # get   'shops' => 'shops#index'
  # post 'shops' => 'shops#search'
  # get   'shops/show' => 'shops#show'
  # get   'shops/new'   => 'shops#new'
  # post 'shops/create' => 'shops#create'
  # get   'shops/:id'   =>  'shops#show'
  # get   'reviews' => 'reviews#index'
  # post  'reviews' => 'reviews#search'
  # # get   'reviews/show'  => 'reviews#show'
  # post  'reviews/create'  => 'reviews#create'
  # get   'reviews/:id/show'  => 'reviews#show'
  # get   'womans'    =>  'womans#index'
  # post  'womans/create'   =>   'womans#create'
end
