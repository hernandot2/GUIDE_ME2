Rails.application.routes.draw do
  root to: "pages#home"

  devise_for :users, controllers: { sessions: 'users/sessions', registrations: 'users/registrations', passwords: 'users/passwords'}

  get 'profiles/show'
  get 'contact', to: 'pages#contact'
  get 'search_programs', to: 'programs#search', as: 'search_programs'


  resources :programs
  resources :profiles, only: [:show, :edit, :update]
  resources :mentorships, only: [:show]

end
