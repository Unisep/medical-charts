Rails.application.routes.draw do
  mount Rapidfire::Engine => 'rapidfire'

  get 'database/index'

  namespace :admin do
    resources :basic_treatments, except: :show
  end

  resources :patients do
    get 'find_address/:zip_code', action: :find_address, on: :collection
  end

  root 'home#index'
end
