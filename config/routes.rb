Rails.application.routes.draw do
  resources :pois
  root 'pois#index'
end
