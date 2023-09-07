Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  namespace :api, default: {format: :json} do 
    resources :pokemon, only: [:show, :index, :create, :update]
  end
end
