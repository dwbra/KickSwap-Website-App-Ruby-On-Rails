Rails.application.routes.draw do
  resources :listings
  devise_for :users
  root "home#page"
  get "/payments/success", to: "payments#success"
  post "/payments/webhook", to: "payments#webhook"
  get "/account", to: "home#account"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
