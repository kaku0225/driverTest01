Rails.application.routes.draw do
  root 'driverprofiles#new'
  resources :driverprofiles
end
