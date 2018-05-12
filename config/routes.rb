Rails.application.routes.draw do
  devise_for :profiles
  resources :profiles
  resources :adds
  resources :motors


  get :search, controller: :searchresults
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'motors#index'
end
