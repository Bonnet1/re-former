Rails.application.routes.draw do
  root 'static_pages#home'
  get  '/new',  to: 'users#new'
  post '/create',  to: 'users#create'
  resources :users, only: [:new, :create]
end
