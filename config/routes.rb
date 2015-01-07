Innovationwomen::Application.routes.draw do
  resources :profiles

  root to: 'home#index'
  get 'search', to: 'profiles#search'
end
