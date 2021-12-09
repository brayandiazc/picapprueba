Rails.application.routes.draw do
  resources :dictionaries
  root 'dictionaries#new'
end
