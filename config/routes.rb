Rails.application.routes.draw do
  get 'database/index'

  namespace :admin do
    resources :basic_treatments
  end

  resources :patients

  root 'home#index'
end
