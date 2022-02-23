Rails.application.routes.draw do
  

  get "signup", to: "registrations#new"
  post "signup", to: "registrations#create"

  delete "logout", to: "sessions#destroy"



  root to: "main#index"

end
