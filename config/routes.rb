Rails.application.routes.draw do

  devise_for :institutions
  resources :integrations
  resources :institutions do
    resources :contacts
  end

  root to: 'application#index'

end
