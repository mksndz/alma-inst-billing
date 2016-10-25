Rails.application.routes.draw do

  devise_for :institutions
  resources :integrations
  resources :integration_configs
  resources :institutions do
    resources :contacts
  end

  root to: 'application#index'

end
