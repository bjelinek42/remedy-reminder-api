Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  resources :users, only: [:create] do
    resources :remedies do
      resources :schedules, only: [:create, :index]
    end
  end

  resources :sessions, only: [:create]
end
