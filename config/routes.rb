Rails.application.routes.draw do
  resource :customers, :restuarants, :reservations
  
  root 'customers#index'
end
