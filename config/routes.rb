Rails.application.routes.draw do
  resource :customers, :restuarants, :reservations
  
  root 'home#index'
end
