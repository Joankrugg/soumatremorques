Rails.application.routes.draw do
  resources :products, only: [:index, :show] do
    collection do
      get :trailers
      get :accessories
      get :maintenance
      get :installations
      get :documents
      get :luggage
      get :water
      get :animals
      get :garden
      get :bin
      get :moto
      get :car
      get :truck
      get :trail
      get :close
      get :market
    end
  end

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
