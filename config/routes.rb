Rails.application.routes.draw do
  root 'shops#index'
  post 'shops' => 'shops#search'
  get   'reviews' => 'reviews#index'
end
