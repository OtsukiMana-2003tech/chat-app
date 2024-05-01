Rails.application.routes.draw do
  root to: "messages#index"
  resources :users, only: [:udit, :update]
end