Rails.application.routes.draw do
  root 'static_pages#index'
  get 'manage', to: 'static_pages#manage'

  resources :careers
  post 'car', to: 'careers#create'
  delete 'car', to: 'careers#destroy'
  patch 'car', to: 'careers#update'

  resources :introductions
  post 'intro', to: 'introductions#create'
  delete 'intro', to: 'introductions#destroy'
  patch 'intro', to: 'introductions#update'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
