Rails.application.routes.draw do
  resources :dictionaries
  root 'dictionaries#index'
end
