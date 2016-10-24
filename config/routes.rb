Rails.application.routes.draw do

  resources :integrations
  resources :institutions do
    resources :contacts
  end

  root 'application#index'

end
