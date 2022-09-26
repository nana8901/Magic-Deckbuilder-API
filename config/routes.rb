Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  post "/users" => "users#create"
  post "/sessions" => "sessions#create"
  get "/decks" => "decks#index"
  post "/decks" => "decks#create"
  patch "/decks/:id" => "decks#update"
  get "/decks/:id" => "decks#show"
  delete "/decks/:id" => "decks#delete"
  get "/cards" => "cards#index"
  post "/cards/:id/add" => "cards#add"
  get "/cards/:id" => "cards#show"
  post "/sessions" => "sessions#create"
  delete "/cards/:id" => "cards#delete"
  
end
