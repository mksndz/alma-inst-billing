Rails.application.routes.draw do

  devise_for :institutions
  resources :integrations
  resources :integration_configs
  resources :institutions do
    resources :contacts
  end

  scope '/api' do
    constraints(
        format: :json,
        id: /\w+/
    ) do
      get '/:inst/settings', to: 'endpoint#settings'
      get '/:inst/contacts', to: 'endpoint#contacts'
    end
  end

  root to: 'application#index'

end
