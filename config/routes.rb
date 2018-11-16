Rails.application.routes.draw do
  root 'static_pages#index'
  get 'manage', to: 'static_pages#manage'

  resources :performances
  post 'per', to: 'performances#create'
  delete 'per', to: 'performances#destroy'
  patch 'per', to: 'performances#update'

  resources :fee_structures
  post 'fee', to: 'fee_structures#create'
  delete 'fee', to: 'fee_structures#destroy'
  patch 'fee', to: 'fee_structures#update'

  resources :programs
  post 'pro', to: 'programs#create'
  delete 'pro', to: 'programs#destroy'
  patch 'pro', to: 'programs#update'

  resources :players
  post 'play', to: 'players#create'
  delete 'play', to: 'players#destroy'
  patch 'play', to: 'players#update'

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
