Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :authors
  resources :genres
  resources :books do
    resources :users, only: [:index]
  end
  resources :users do
    resources :books, only: [:index]
  end
end
