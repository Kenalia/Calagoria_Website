Rails.application.routes.draw do
  resources :session_recaps
  resources :characters
  resources :users

  root "session_recaps#index"
  get "/pages/*page" => "pages#show"
end
