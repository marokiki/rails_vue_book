Rails.application.routes.draw do
  resources :calenders
  resources :rooms

  root "rooms#index"

  devise_for :admins, controllers: {
                        registrations: "admins/registrations",
                        sessions: "admins/sessions",
                      }

  devise_for :users, controllers: {
                       registrations: "users/registrations",
                       sessions: "users/sessions",
                     }
end
