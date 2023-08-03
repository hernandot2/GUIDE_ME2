Rails.application.routes.draw do
  root to: "pages#home"

  devise_for :users, controllers: { sessions: 'users/sessions', registrations: 'users/registrations', passwords: 'users/passwords'}

  get 'profiles/show'
  get 'contact', to: 'pages#contact'

  resources :programs
  resources :profiles, only: [:show, :edit, :update]

end
