Rails.application.routes.draw do
  get 'static_pages/home'
  resources :authors
  resources :brag_entries
  resources :contacts
  resources :friends, only: [:index, :new, :create]
  root to: "static_pages#home"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
