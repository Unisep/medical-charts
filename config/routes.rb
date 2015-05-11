Rails.application.routes.draw do
  resources :patients

  root 'home#index'
end
