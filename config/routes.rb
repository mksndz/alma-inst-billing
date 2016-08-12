Rails.application.routes.draw do

  resources :institutions do
    resources :contacts
  end

  root 'application#index'

end
