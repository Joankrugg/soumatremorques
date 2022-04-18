Rails.application.routes.draw do
  resources :white_book_leads, only: [:index, :new, :create, :destroy]
  resources :newsletter_leads, only: [:index, :new, :create, :destroy]
  resources :criteria_leads, only: [:index, :new, :create, :destroy]
  resources :compatibility_leads, only: [:index, :new, :create, :destroy]
  resources :vip_leads, only: [:index, :new, :create, :destroy]
  get 'carts/show'
  resources :products, path: 'produits', only: [:index, :show] do
    collection do
      get :trailers, path: '/remorques'
      get :accessories, path: '/accessoires'
      get :maintenance, path: '/entretien'
      get :installations, path: '/installations'
      get :documents, path: '/services'
      get :luggage, path: '/remorques/bagageres/utilitaires'
      get :water, path: '/remorques/nautiques'
      get :animals, path: "/remorques/transport-d-animaux/vans"
      get :garden, path: '/remorques/espaces-verts/jardin'
      get :bin, path: '/remorques/bennes'
      get :moto, path: '/remorques/porte-moto'
      get :car, path: '/remorques/porte-voiture'
      get :truck, path: '/remorques/porte-engin'
      get :trail, path: '/remorques/plateaux'
      get :close, path: '/remorques/fourgons'
      get :market, path: '/remorques/magasins'

      get :rent, path: 'location/remorques'
      get :luggage_rent, path: 'location/remorques/bagageres/utilitaires'
      get :water_rent, path: 'location/remorques/nautiques'
      get :animals_rent, path: "location/remorques/transport-d-animaux/van"
      get :garden_rent, path: 'location/remorques/espaces-verts/jardin'
      get :bin_rent, path: 'location/remorques/bennes'
      get :moto_rent, path: 'location/remorques/porte-moto'
      get :car_rent, path: 'location/remorques/porte-voiture'
      get :truck_rent, path: 'location/remorques/porte-engin'
      get :trail_rent, path: 'location/remorques/plateaux'
      get :close_rent, path: 'location/remorques/fourgons'
      get :market_rent, path: 'location/remorques/magasins'


      get :wires, path: 'accessoires/equipement-electrique'
      get :lockers, path: 'accessoires/attelage'
      get :sticks, path: 'accessoires/essieux'
      get :wheels, path: 'accessoires/roues'
      get :suspensions, path: 'accessoires/suspensions'
      get :sheets, path: 'accessoires/baches'
      get :set, path: 'atelier/entretien/réglages'
      get :direction, path: 'atelier/entretien/direction'
      get :reinforcements, path: 'atelier/entretien/suspensions-renforts'
      get :stabilisation, path: 'atelier/entretien/aide-a-la-manoeuvre'
      get :wire_installation, path: 'atelier/installation/equipement-electrique'
      get :stick_installation, path: 'atelier/installation/essieux'
      get :reinforcements_installation, path: 'atelier/installation/suspensions-renforts'
      get :locker_installation, path: 'atelier/installation/attelage'
      get :direction_installation, path: 'atelier/installation/direction'
      get :stabilisation_installation, path: 'atelier/installation/aide-à-la-manoeuvre'
      get :plate, path: 'service/immatriculation'
      get :technical_control, path: 'service/controle-technique'
      get :insurrance, path: 'service/assurance'
      get :rent, path: 'service/location'
      get :service, path: 'services'
      get :trailers_permisb_casual_luggage, path: '/remorques/bagageres/usage-occasionnel/permisb'
      get :trailers_permisb_casual_water, path: '/remorques/nautiques/usage-occasionnel/permisb'
      get :trailers_permisb_casual_animal, path: '/remorques/tranport-d-animaux/usage-occasionnel/permisb'
      get :trailers_permisb_casual_garden, path: '/remorques/jardinage/usage-occasionnel/permisb'
      get :trailers_permisb_casual_moto, path: '/remorques/porte-moto/usage-occasionnel/permisb'
      get :trailers_permisb_casual_close, path: '/remorques/fourgon/usage-occasionnel/permisb'
    end
    resources :quotations, only: [:index, :new, :create ]
    resources :reservations, only: [:new, :create, :destroy]
  end
  get '/sitemap.xml' => 'sitemaps#index', defaults: { format: 'xml' }
  match "/404", to: "errors#not_found", via: :all
  match "/422", to: "errors#unacceptable", via: :all
  match "/500", to: "errors#internal_server_error", via: :all
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  root to: 'pages#home'
  get 'pages/holidays'
  get 'pages/horses'
  get 'pages/constant_gardener'
  get 'pages/smart'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
