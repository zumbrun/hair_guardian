Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :caps do
  	resources :data, only: [:create, :destroy]
  end

  resources :data, only: [:index]

  root to: "caps#index"

end
