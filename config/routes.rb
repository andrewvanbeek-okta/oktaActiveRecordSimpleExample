Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "sessions#new"
resources :users, param: :okta_id

resources :sessions, only: [:new, :create]
delete "/logout" => "sessions#destroy"
get "/signout" => "sessions#destroy"
get "/authorization-code/callback" => "sessions#new"
post "/authorization-code/callback" => "sessions#new"
post "/oktaSign" => "sessions#create"

end
