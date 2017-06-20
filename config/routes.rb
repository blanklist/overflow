Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :questions do
    resources :answers
    resources :comment
  end

  resources :answers do
    resources :comment
  end

  root "questions#index"

end
