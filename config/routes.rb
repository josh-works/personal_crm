Rails.application.routes.draw do
  resources :brag_entries
  resources :contacts
  get 'hello_world/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
