Rapidfire::Engine.routes.prepend do
  resources :question_groups do
    resources :answer_groups, except: :show
  end
end
