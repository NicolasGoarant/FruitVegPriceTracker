Rails.application.routes.draw do
  resources :products do
    resources :prices, only: [:new, :create]
  end
  root 'products#index'
end
