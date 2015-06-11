Rails.application.routes.draw do
  get 'database/index'

  namespace :admin do
    resources :basic_treatments, except: :show
  end

  resources :patients

  root 'home#index'
end
