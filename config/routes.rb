Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  post "/users" => "users#create"
  post "/sessions" => "sessions#create"
  get "/decks" => "decks#index"
  get "/cards" => "cards#index"
  get "/cards/:id" => "cards#show"
  post "/sessions" => "sessions#create"
end
