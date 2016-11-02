Rails.application.routes.draw do
  devise_for :users
  root 'shops#index'
  get   'shops' => 'shops#index'
  post 'shops' => 'shops#search'
  get   'shops/show' => 'shops#show'
  get   'shops/new'   => 'shops#new'
  post 'shops/create' => 'shops#create'
  get   'shops/:id'   =>  'shops#show'
  get   'reviews' => 'reviews#index'
  post  'reviews' => 'reviews#search'
  get   'reviews/show'  => 'reviews#show'
  post  'reviews/create'  => 'reviews#create'
  get   'womans'    =>  'womans#index'
  post  'womans/create'   =>   'womans#create'
end
