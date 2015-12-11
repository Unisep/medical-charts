Rails.application.routes.draw do
  mount Rapidfire::Engine => 'database/rapidfire', as: 'rapidfire'

  resources :chips, only: :index
  resources :database, only: :index
  resources :appointments, except: [:show, :destroy] do
    get :search, on: :collection
    post :cancel, on: :member
    post :attend, on: :member

    resources :evolutions
  end

  resources :patients, only: :none do
    resources :appointments
  end

  namespace :admin do
    resources :basic_treatments, except: :show
  end

  resources :patients do
    get 'find_address/:zip_code', action: :find_address, on: :collection
  end

  resources :historical_infos, only: [:show, :edit, :update]

  root 'home#index'
end
