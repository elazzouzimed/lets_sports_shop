Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :users


  resources :sports do
    resources :items
  end
  resources :items, only: [:new, :create]

  resources :sports
  resources :transactions
  resources :feedbacks
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
