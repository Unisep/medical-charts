Rails.application.routes.draw do
  namespace :admin do
    resources :basic_treatments
  end

  resources :patients

  root 'home#index'
end
