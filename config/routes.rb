Rails.application.routes.draw do

  resources :book_prices, except: [:show]
  resources :institutions do
    resources :contacts
  end

  root 'application#index'

end
