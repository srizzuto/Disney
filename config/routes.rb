Rails.application.routes.draw do
  
  get "password", to: "passwords#edit", as: :edit_password
  patch "password", to: "passwords#update"

  get "signup", to: "registrations#new"
  post "signup", to: "registrations#create"

  get "signin", to: "sessions#new"
  post "signin", to: "sessions#create"
  delete "logout", to: "sessions#destroy"

  get "film", to: "films#new"
  post "film", to: "films#create"
  get "film_edit", to: "films#edit"
  patch "film", to: "films#update"
  delete "film", to: "films#destroy"
  
  get "personaje", to: "personajes#new"
  post "personaje", to: "personajes#create"
  get "personaje_edit", to: "personajes#edit"
  patch "personaje", to: "personajes#update"
  delete "personaje", to: "personajes#destroy"

  get "genre", to: "genres#new"
  post "genre", to: "genres#create"
  get "genre_edit", to: "genres#edit"
  patch "genre", to: "genres#update"
  delete "genre", to: "genres#destroy"

  root to: "main#index"

end
