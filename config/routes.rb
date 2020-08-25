Rails.application.routes.draw do
  root to: 'pages#home'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  devise_for :users
  devise_for :recruiters

  resource :profile, only: [:edit, :update, :show]

  resources :offers, only: [:index, :show] do
    resources :applies, only: [:create]
  end

  namespace :recruiters do
    resources :offers, only: [:index, :show, :new, :create]

    resources :applies, only: [] do
      member do
        patch :accept
        patch :refuse
      end
    end
  end
end
