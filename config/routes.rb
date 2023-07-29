Rails.application.routes.draw do
  get 'profiles/show'
  get 'contact', to: 'pages#contact'
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  resources :programs
  resources :profiles, only: :show

end
