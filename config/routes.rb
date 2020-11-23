Rails.application.routes.draw do
  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/destroy'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :caps do
  	resources :data, only: [:create, :destroy]
  end

  resources :data, only: [:index]
  resources :sessions, only:[:new, :create, :destroy]

  root to: "caps#index"

  get "/login" => "sessions#new", as: "login"
  delete "/logout" => "sessions#destroy", as: "logout"

end
