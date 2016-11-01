Rails.application.routes.draw do
  root 'shops#index'
  post 'shops' => 'shops#search'
  get   'shops/show' => 'shops#show'
  get   'shops/add'   => 'shops#add'
  post 'shops/create' => 'shops#create'
  get   'reviews' => 'reviews#index'
  post  'reviews' => 'reviews#search'
  get   'reviews/show'  => 'reviews#show'
  post  'reviews/create'  => 'reviews#create'
  get   'womans/index'    =>  'womans#index'
end
