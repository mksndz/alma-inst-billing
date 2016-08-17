Rails.application.routes.draw do

  resources :book_prices, except: [:show]
  resources :institutions do
    resources :contacts

    get 'sandbox', to: 'alma#index', as: :alma_api_sandbox
    get 'users', to: 'alma#get_users', as: :users
    get 'user/:user_id', to: 'alma#get_user', as: :user
    get 'user/:user_id/fees', to: 'alma#get_user_fees', as: :user_fees
    get 'user/:user_id/fee/:fee_id', to: 'alma#get_user_fee', as: :user_fee

  end

  root 'application#index'

end
