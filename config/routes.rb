Rails.application.routes.draw do
  root to: 'todotasks#index'
  resources :todotasks, only: [:index, :new, :create] do
    resource :completion, only: [:create, :destroy]
  end
  resource :session, only: [:new, :create]
end
