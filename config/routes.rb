Rails.application.routes.draw do
  resources :complaints, except: [:create]
  resources :companies do
    resources :complaints, only: [:create]
  end
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'companies#index'
end
