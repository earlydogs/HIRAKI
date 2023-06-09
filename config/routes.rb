Rails.application.routes.draw do
  get 'reservations/index'
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  
  devise_scope :user do
    root to: "devise/sessions#new"
  end
  # Defines the root path route ("/")
  # root "articles#index"
  resources :reservations, only: [:index]
end
