Rails.application.routes.draw do
  get 'perfil', to: 'perfil#index'
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  get 'geocoder/findaddress'
  get 'pages/index'
  get 'pages/about'

  root to: 'pages#index'

  resources :products do
    resources :orders, only: :create
  end

  resources :billings, only: [:index] do
    collection do
      get 'pre_pay'
      get 'execute'
    end
  end

  resources :orders, only: :index do
    collection do
      get "clean"
    end
  end

  devise_for :users, controllers: {
        registrations: 'users/registrations'
      }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
