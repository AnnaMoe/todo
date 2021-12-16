Rails.application.routes.draw do
  root to: 'todotasks#index'
  resources :todotasks, only: [:index, :new, :create]
end
