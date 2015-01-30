Innovationwomen::Application.routes.draw do
  resources :profiles do
    resources :topics
  end
  resources :user_sessions
  # resources :users

  get 'login' => 'user_sessions#new', :as => :login
  post 'logout' => 'user_sessions#destroy', :as => :logout

  get 'about', to: 'welcome#about'
  get 'search', to: 'profiles#search'
  get 'find_profile', to: 'welcome#coming_soon'
  get 'new_event', to: 'welcome#coming_soon'
  get 'events', to: 'welcome#coming_soon'
  get 'organizations', to: 'welcome#coming_soon'

  root to: 'welcome#index'
end
