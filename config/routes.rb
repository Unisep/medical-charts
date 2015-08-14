Rails.application.routes.draw do
  get 'database/index'

  namespace :admin do
    resources :basic_treatments, except: :show
    resources :basic_questions do
      resources :basic_question_options, except: :index
    end
  end

  resources :patients do
    get 'find_address/:zip_code', action: :find_address, on: :collection
  end

  root 'home#index'
end
