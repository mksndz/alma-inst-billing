Rails.application.routes.draw do
  resources :contacts
  resources :institutions

  root 'application#index'
end
