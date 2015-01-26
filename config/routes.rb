Innovationwomen::Application.routes.draw do
  resources :profiles

  root to: 'welcome#index'
  get 'search', to: 'profiles#search'
end
