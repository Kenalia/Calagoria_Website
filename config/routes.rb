Rails.application.routes.draw do
  devise_for :users
  mount RailsAdmin::Engine => '/cal_web_admin', as: 'rails_admin'
  resources :session_recaps
  resources :characters
  resources :users

  root "session_recaps#index"
  get "/pages/*page" => "pages#show"
end
