Rails.application.routes.draw do
  devise_for :users
  resource :customers, :restuarants, :reservations
  
  root 'home#index'
end
