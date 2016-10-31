Rails.application.routes.draw do

  devise_for :institutions
  resources :integrations
  resources :integration_configs
  resources :institutions do
    resources :contacts
  end

  scope '/api' do
    get '/:inst/settings', to: 'endpoint#settings', constraints: { id: /\w+/ }
    get '/:inst/contacts', to: 'endpoint#contacts', constraints: { id: /\w+/ }
  end

  root to: 'application#index'

end
