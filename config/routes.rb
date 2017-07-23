Rails.application.routes.draw do
  resources :ratings
  resources :films , only: [:index , :show]
  # devise_for :users
  devise_for :users , :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'users#index'
end
