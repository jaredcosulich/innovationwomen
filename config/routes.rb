Innovationwomen::Application.routes.draw do
  resources :password_resets, only: [:create, :edit, :update, :new]
  resources :user_sessions, only: [:new, :create, :destroy]

  get 'login' => 'user_sessions#new', as: :login
  post 'logout' => 'user_sessions#destroy', as: :logout

  resources :users do
    resources :profiles do
      resources :topics
    end
  end

  get 'about', to: 'welcome#about'
  get 'search', to: 'profiles#search'
  get 'find_profile', to: 'welcome#coming_soon'
  get 'new_event', to: 'welcome#coming_soon'
  get 'events', to: 'welcome#coming_soon'
  get 'organizations', to: 'welcome#coming_soon'
  get 'new_ask_to_speak', to: 'welcome#coming_soon'

  root to: 'welcome#index'
end
