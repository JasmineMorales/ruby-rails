Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :authors do
    resources :books, only: [:index]
  end
  resources :genres do
    resources :books, only: [:index]
  end
  resources :books do
    resources :users, only: [:index]
  end
  resources :users do
    resources :books, only: [:index]
  end
end
