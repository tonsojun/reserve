Rails.application.routes.draw do
  resource :customers, :restuarants, :reservations
  
  root 'reservations#new'
end
